' Copyright © Microsoft Corporation.  All Rights Reserved.
' This code released under the terms of the 
' Microsoft Public License (MS-PL, http://opensource.org/licenses/ms-pl.html.)

Imports System.Text
Imports System.Windows.Media.Animation
Imports System.IO
Imports System.Windows.Threading
Imports System.Data

Partial Public Class MainPage
    Inherits Page
    Public NLevel As Boolean = False
    Dim m As MainWindow = Application.Current.MainWindow
    Dim bm As New BasicMethods
    WithEvents t As New DispatcherTimer With {.IsEnabled = True, .Interval = New TimeSpan(0, 0, 1)}


    Private sampleGridOpacityAnimation As DoubleAnimation
    Private sampleGridTranslateTransformAnimation As DoubleAnimation
    Private borderTranslateDoubleAnimation As DoubleAnimation

    Public Sub New()
        InitializeComponent()

        Dim widthBinding As New Binding("ActualWidth")
        widthBinding.Source = Me

        sampleGridOpacityAnimation = New DoubleAnimation()
        sampleGridOpacityAnimation.To = 0
        sampleGridOpacityAnimation.Duration = New Duration(TimeSpan.FromSeconds(0.15))

        sampleGridTranslateTransformAnimation = New DoubleAnimation()
        sampleGridTranslateTransformAnimation.BeginTime = TimeSpan.FromSeconds(0.15)
        sampleGridTranslateTransformAnimation.Duration = New Duration(TimeSpan.FromSeconds(0.15))

        borderTranslateDoubleAnimation = New DoubleAnimation()
        borderTranslateDoubleAnimation.Duration = New Duration(TimeSpan.FromSeconds(0.3))
        borderTranslateDoubleAnimation.BeginTime = TimeSpan.FromSeconds(0)

    End Sub
    Private Shared _packUri As New Uri("pack://application:,,,/")

    Private Sub btnBack_Click(sender As Object, e As RoutedEventArgs) Handles btnBack.Click
        borderTranslateDoubleAnimation.From = 0
        borderTranslateDoubleAnimation.To = -ActualWidth
        SampleDisplayBorderTranslateTransform.BeginAnimation(TranslateTransform.XProperty, borderTranslateDoubleAnimation)
        GridSampleViewer_Loaded(Nothing, Nothing)
        Md.Currentpage = ""
    End Sub

    Private Sub selectedSampleChanged(ByVal sender As Object, ByVal args As RoutedEventArgs)

        If TypeOf args.Source Is RadioButton Then
            Dim theButton As RadioButton = CType(args.Source, RadioButton)
            Dim theFrame As Page = CType(theButton.Tag, Page)

            theButton.IsTabStop = False

            SampleDisplayFrame.Content = theButton.Tag
            SampleDisplayBorder.Visibility = Visibility.Visible

            CType(args.Source, RadioButton).IsChecked = False

            Try
                theFrame.Title = (CType(CType(args.Source, RadioButton).Content, TranslateTextAnimationExample).RealText.Tag)
                theFrame.Tag = CType(CType(args.Source, RadioButton).Content, TranslateTextAnimationExample).RealText.Tag
            Catch ex As Exception
            End Try
            sampleDisplayFrameLoaded(theFrame, args)

        End If

    End Sub

    Private Sub sampleDisplayFrameLoaded(ByVal sender As Object, ByVal args As EventArgs)
        Try
            If TypeOf (sender) Is Frame Then
                If Not (CType(CType(sender, Frame).Content, Page).Tag) Is Nothing Then
                    CType(CType(sender, Frame).Content, Page).Title = (CType(CType(sender, Frame).Content, Page).Tag)
                    Md.Currentpage = CType(CType(sender, Frame).Content, Page).Title
                End If
            End If
        Catch ex As Exception
        End Try
        Try
            If TypeOf (sender) Is Page Then
                CType(sender, Page).Title = (CType(sender, Page).Tag)
                Md.Currentpage = CType(sender, Page).Title
            End If
        Catch ex As Exception
        End Try

        sampleGridTranslateTransformAnimation.To = -ActualWidth
        borderTranslateDoubleAnimation.From = -ActualWidth
        borderTranslateDoubleAnimation.To = 0

        SampleDisplayBorder.Visibility = Visibility.Visible
        SampleGrid.BeginAnimation(Grid.OpacityProperty, sampleGridOpacityAnimation)
        SampleGridTranslateTransform.BeginAnimation(TranslateTransform.XProperty, sampleGridTranslateTransformAnimation)
        SampleDisplayBorderTranslateTransform.BeginAnimation(TranslateTransform.XProperty, borderTranslateDoubleAnimation)
    End Sub

    Private Sub galleryLoaded(ByVal sender As Object, ByVal args As RoutedEventArgs)
        If bm.TestIsLoaded(Me, True) Then Return
        tab.Margin = New Thickness(0)
        tab.HorizontalAlignment = HorizontalAlignment.Stretch
        tab.VerticalAlignment = VerticalAlignment.Stretch

        Load()

        SampleDisplayBorderTranslateTransform.X = -ActualWidth
        SampleDisplayBorder.Visibility = Visibility.Hidden
    End Sub

    Private Sub pageSizeChanged(ByVal sender As Object, ByVal args As SizeChangedEventArgs)
        SampleDisplayBorderTranslateTransform.X = Me.ActualWidth
    End Sub

    Dim DesignDt As New DataTable
    Sub LoadRadio(ByVal G As WrapPanel, ByVal frm As UserControl, ByVal Ttl As String)
        CurrentMenuitem += 1

        While Ttl.Length < 16
            Ttl = " " & Ttl & " "
        End While

        Dim RName As String = "menuitem" & CurrentMenuitem
        Dim r As New RadioButton With {.Name = RName, .Style = Application.Current.FindResource("GlassRadioButtonStyle")} ''GlossyCloseRadioButton
        Dim AnimatingAlongAPathExampleFrame As New Page
        AnimatingAlongAPathExampleFrame.Content = frm
        r.Tag = AnimatingAlongAPathExampleFrame
        Dim t As New TranslateTextAnimationExample
        't.Background = t.Grid1.Background
        r.Content = t
        G.Children.Add(r)

        r.Width = 180
        r.Height = 120

        t.RealText.Text = Ttl
        t.RealText.Tag = Ttl
        r.ToolTip = Ttl


    End Sub

    Private Sub LoadRadio(ByVal frm As TabItem, ByVal Ttl As String)
        Dim r As New RadioButton With {.Style = Application.Current.FindResource("GlassRadioButtonStyle")}
        Dim AnimatingAlongAPathExampleFrame As New Frame
        AnimatingAlongAPathExampleFrame.Source = New Uri(frm.GetType().ToString.Split(".").Last & ".Xaml", UriKind.RelativeOrAbsolute)
        AnimatingAlongAPathExampleFrame.Background = System.Windows.Media.Brushes.White
        AnimatingAlongAPathExampleFrame.NavigationUIVisibility = NavigationUIVisibility.Hidden
        r.Content = AnimatingAlongAPathExampleFrame
        'SampleGrid.Children.Add(r)
        r.Width = 100
        r.Height = 60
        r.ToolTip = Ttl
    End Sub


    Private Sub GridSampleViewer_Loaded(sender As Object, e As RoutedEventArgs) Handles Me.Loaded
        bm.TestIsLoaded(Me)
    End Sub



    Public Lvl As Boolean = False
    Dim CurrentTab As Integer = 0
    Dim CurrentMenuitem As Integer = 0
    Public Sub Load()

        DesignDt = bm.ExcuteAdapter("select * from PLevels where id='" & Md.UserName & "'")

        If MyProjectType = ProjectType.PCs Then
            LoadGPCs()
            Return
        End If

        LoadTabs()

        If Not Lvl Then
            Dim dt As DataTable = bm.ExcuteAdapter("select * from nlevels where id=" & Md.LevelId)
            If dt.Rows.Count = 0 Then Return

            For i As Integer = 0 To tab.Items.Count - 1
                Dim item As TabItem = CType(tab.Items(i), TabItem)

                If dt.Rows(0)(CType(tab.Items(i), TabItem).Name).ToString = "" Then
                    item.Visibility = Windows.Visibility.Collapsed
                Else
                    item.Visibility = IIf(dt.Rows(0)(item.Name), Visibility.Visible, Visibility.Collapsed)
                End If
                item.Content.Visibility = item.Visibility

                For x As Integer = 0 To CType(CType(item.Content, ScrollViewer).Content, WrapPanel).Children.Count - 1
                    Dim t As RadioButton = CType(CType(CType(item.Content, ScrollViewer).Content, WrapPanel).Children(x), RadioButton)
                    If dt.Rows(0)(t.Name).ToString = "" Then
                        t.Visibility = Windows.Visibility.Collapsed
                    Else
                        t.Visibility = IIf(dt.Rows(0)(t.Name), Visibility.Visible, Visibility.Collapsed)
                    End If
                Next
            Next

            For i As Integer = 0 To tab.Items.Count - 1
                If CType(tab.Items(i), TabItem).Visibility = Windows.Visibility.Visible Then
                    CType(tab.Items(i), TabItem).IsSelected = True
                    Exit For
                End If
            Next

        End If

    End Sub

    Function MakePanel(MyHeader As String, ImagePath As String) As WrapPanel
        While MyHeader.Length < 16
            MyHeader = " " & MyHeader & " "
        End While
        CurrentTab += 1
        Dim SV As New MyScrollViewer
        bm.SetImage(SV.Img, ImagePath)
        Dim t As New TabItem With {.Content = SV, .Name = "tab" & CurrentTab, .Header = MyHeader}
        tab.Items.Add(t)
        Dim G As WrapPanel = SV.MyWrapPanel
        G.AddHandler(System.Windows.Controls.Primitives.ToggleButton.CheckedEvent, New System.Windows.RoutedEventHandler(AddressOf Me.selectedSampleChanged))
        Return G
    End Function

    Private Sub LoadGPCs()
        Dim G As WrapPanel = MakePanel("File", "SONAC.jpg")

        Dim frm As New BasicForm With {.TableName = "PCs"}
        frm.txtName.MaxLength = 1000
        m.TabControl1.Items.Clear()
        LoadRadio(G, frm, "PCs")

    End Sub

    Private Sub LoadGFile()
        Dim s As String = "buttonscreen3.jpg"

        Dim G As WrapPanel = MakePanel("ملف", s)
        Dim frm As UserControl

        LoadRadio(G, New Employees, "الموظفين")

        frm = New DriversSellers With {.TableName = "Drivers"}
        LoadRadio(G, frm, "السائقين")


        frm = New BasicForm With {.TableName = "Countries"}
        LoadRadio(G, frm, "الدول")

        frm = New BasicForm2 With {.MainTableName = "Countries", .MainSubId = "Id", .MainSubName = "Name", .lblMain_Content = "الدولة", .TableName = "Cities", .MainId = "CountryId", .SubId = "Id", .SubName = "Name"}
        LoadRadio(G, frm, "المحافظات")


        frm = New BasicForm3 With {.MainTableName = "Countries", .MainSubId = "Id", .MainSubName = "Name", .lblMain_Content = "الدولة", .Main2TableName = "Cities", .Main2MainId = "CountryId", .Main2SubId = "Id", .Main2SubName = "Name", .lblMain2_Content = "المحافظة", .TableName = "Areas", .MainId = "CountryId", .MainId2 = "CityId", .SubId = "Id", .SubName = "Name"}
        LoadRadio(G, frm, "المناطق")


        frm = New BasicForm With {.TableName = "Departments"}
        LoadRadio(G, frm, "الأقسام")

        frm = New BasicForm With {.TableName = "Brands"}
        LoadRadio(G, frm, "العلامات التجارية")


    End Sub



    Private Sub LoadGAccountants()
        Dim G As WrapPanel = MakePanel("الحسابات", "buttonscreen4.jpg")
        Dim frm As UserControl

        frm = New Chart
        LoadRadio(G, frm, "دليل الحسابات")

        frm = New Customers 'Suppliers With {.TableName = "Customers"}
        LoadRadio(G, frm, "العملاء")

        frm = New Suppliers
        LoadRadio(G, frm, "الموردين")

        'frm = New CreditsDebits With {.TableName = "Sellers", .LinkFile = 7}
        'LoadRadio(G, frm, "البائعين")

        frm = New CreditsDebits With {.TableName = "Debits", .LinkFile = 3}
        LoadRadio(G, frm, "المدينين")

        frm = New CreditsDebits With {.TableName = "Credits", .LinkFile = 4}
        LoadRadio(G, frm, "الدائنين")

        frm = New CreditsDebits With {.TableName = "Saves", .LinkFile = 5}
        LoadRadio(G, frm, "الخزائن")

        'frm = New CreditsDebits With {.TableName = "Banks", .LinkFile = 6}
        'LoadRadio(G, frm, "البنوك")


        frm = New BankCash With {.Flag = 1, .LinkFile = 5}
        LoadRadio(G, frm, "إيراد خزنة")

        frm = New BankCash With {.Flag = 2, .LinkFile = 5}
        LoadRadio(G, frm, "مصروفات خزنة")

        'frm = New BankCash With {.Flag = 3, .LinkFile = 6}
        'LoadRadio(G, frm, "إيراد بنك")

        'frm = New BankCash With {.Flag = 4, .LinkFile = 6}
        'LoadRadio(G, frm, "مصروفات بنك")

    End Sub

    Private Sub LoadGPescol()
        Dim G As WrapPanel = MakePanel("البسكول", "Store.jpg")
        Dim frm As UserControl

        frm = New Items2
        LoadRadio(G, frm, "أصناف العهدة")

        frm = New Prices
        LoadRadio(G, frm, "أسعار العملاء")

        frm = New Prices With {.Flag = 2}
        LoadRadio(G, frm, "أسعار الموردين")

        LoadRadio(G, New InMotion, "تصاريح الدخول")

        LoadRadio(G, New UpdatePurchasesPrice, "تحديث أسعار الوارد")

        LoadRadio(G, New Purchase, "المشتريات")

        LoadRadio(G, New OutMotion, "مبيعات الفرزة")

        LoadRadio(G, New UpdateSalesPrice, "تحديث أسعار مبيعات الفرزة")

        LoadRadio(G, New CustomerSales, "مبيعات عملاء العقود")

        LoadRadio(G, New RPT3 With {.Flag = 1, .IsPosted = 1}, "ترحيل مبيعات الفرزة")

        LoadRadio(G, New RPT3 With {.Flag = 1, .IsPosted = 0}, "إلغاء ترحيل مبيعات الفرزة")

        'LoadRadio(G, New RPT3 With {.Flag = 2, .IsPosted = 1}, "ترحيل المشتريات")

        'LoadRadio(G, New RPT3 With {.Flag = 2, .IsPosted = 0}, "إلغاء ترحيل المشتريات")

        LoadRadio(G, New Sales2 With {.Flag = Sales2.FlagState.صرف_عهدة}, "صرف عهدة")

        LoadRadio(G, New Sales2 With {.Flag = Sales2.FlagState.مرتجع_عهدة}, "مرتجع عهدة")

        LoadRadio(G, New SupplierIncome, "رد تأمين عهدة")
4:
    End Sub

    Private Sub LoadGSecurity()
        Dim G As WrapPanel = MakePanel("خيارات", "IMG40.Jpg")
        Dim frm As UserControl

        frm = New ChangePassword
        LoadRadio(G, frm, "تغيير كلمة المرور")

        frm = New Levels
        LoadRadio(G, frm, "المستويات")


        frm = New CalcSalary With {.Flag = 1}
        LoadRadio(G, frm, "فتح سنة مالية جديدة")

        frm = New CalcSalary With {.Flag = 2}
        LoadRadio(G, frm, "بدء سنة مالية جديدة")

    End Sub


    Private Sub LoadGAccountsReports()
        Dim G As WrapPanel = MakePanel("تقارير الحسابات", "buttonscreen4.jpg")
        Dim frm As UserControl

        frm = New RPT2 With {.Flag = 1}
        LoadRadio(G, frm, "كشف حركة حساب")

        frm = New RPT2 With {.Flag = 1, .MyLinkFile = 1}
        LoadRadio(G, frm, "كشف حساب عميل")

        frm = New RPT2 With {.Flag = 1, .MyLinkFile = 2}
        LoadRadio(G, frm, "كشف حساب مورد")

        'frm = New RPT2 With {.Flag = 1, .MyLinkFile = 3}
        'LoadRadio(G, frm, "كشف حساب مدين")

        'frm = New RPT2 With {.Flag = 1, .MyLinkFile = 4}
        'LoadRadio(G, frm, "كشف حساب دائن")

        frm = New RPT2 With {.Flag = 1, .MyLinkFile = 5}
        LoadRadio(G, frm, "كشف حساب خزنة")

        'frm = New RPT2 With {.Flag = 1, .MyLinkFile = 6}
        'LoadRadio(G, frm, "كشف حساب بنك")

        'frm = New RPT2 With {.Flag = 1, .MyLinkFile = 7}
        'LoadRadio(G, frm, "كشف حساب بائع")

    End Sub



    Private Sub LoadGPescolReports()
        Dim G As WrapPanel = MakePanel("تقارير البسكول", "Store.jpg")
        Dim frm As UserControl

        frm = New RPT1 With {.Flag = 1}
        LoadRadio(G, frm, "الوارد من مورد")

        frm = New RPT1 With {.Flag = 2}
        LoadRadio(G, frm, "المنصرف إلى عميل")

        frm = New RPT1 With {.Flag = 5}
        LoadRadio(G, frm, "بيان البيع النقدى")

        frm = New RPT1 With {.Flag = 3}
        LoadRadio(G, frm, "تقرير ضرائب 1/2%")

        frm = New RPT1 With {.Flag = 4}
        LoadRadio(G, frm, "عرض مشتريات تفصيلى")

        frm = New RPT14 With {.Flag = 1}
        LoadRadio(G, frm, "يومية بسكول (وارد)")

        frm = New RPT12 With {.Flag = 12}
        LoadRadio(G, frm, "أرصدة عهدة")

        frm = New RPT14 With {.Flag = 2}
        LoadRadio(G, frm, "يومية بسكول (فرزة)")

        frm = New RPT12 With {.Flag = 11}
        LoadRadio(G, frm, "كارتة صنف عهدة")

        frm = New RPT14 With {.Flag = 3}
        LoadRadio(G, frm, "العهدة تفصيلى")

        frm = New RPT16
        LoadRadio(G, frm, "كارتة صنف عهدة بمورد")

        frm = New RPT15 With {.Flag = 3}
        LoadRadio(G, frm, "عهدة الأصناف")

        frm = New RPT15 With {.Flag = 4}
        LoadRadio(G, frm, "عهدة الموردين")

        frm = New RPT14 With {.Flag = 4}
        LoadRadio(G, frm, "عهدة الموردين تفصيلى")

    End Sub

    Private Sub LoadGStores()
        Dim s As String = "Store.jpg"
        
        Dim G As WrapPanel = MakePanel("المخازن", s)
        Dim frm As UserControl

        'frm = New BasicForm With {.TableName = "Groups", .Flag = 2}
        'CType(frm, BasicForm).CheckBox1.Content = "بيسكول"
        'LoadRadio(G, frm, "المجموعات")

        frm = New Groups
        LoadRadio(G, frm, "المجموعات")


        frm = New BasicForm2 With {.MainTableName = "Groups", .MainSubId = "Id", .MainSubName = "Name", .lblMain_Content = "Group", .TableName = "Types", .MainId = "GroupId", .SubId = "Id", .SubName = "Name"}
        LoadRadio(G, frm, "الأنواع")

        frm = New Items
        LoadRadio(G, frm, "الأصناف")


        'frm = New Stores
        frm = New BasicForm With {.TableName = "Stores", .Flag = 2}
        LoadRadio(G, frm, "المخازن")

        frm = New Sales With {.Flag = Sales.FlagState.أرصدة_افتتاحية}
        LoadRadio(G, frm, "الأرصدة الافتتاحية")

        frm = New Sales With {.Flag = Sales.FlagState.إضافة}
        LoadRadio(G, frm, "أذون الإضافة")

        frm = New Sales With {.Flag = Sales.FlagState.صرف}
        LoadRadio(G, frm, "أذون الصرف")

        frm = New Sales With {.Flag = Sales.FlagState.هدايا}
        LoadRadio(G, frm, "الهدايا")

        frm = New Sales With {.Flag = Sales.FlagState.هالك}
        LoadRadio(G, frm, "الهالك")

        frm = New Sales With {.Flag = Sales.FlagState.تحويل_إلى_مخزن}
        LoadRadio(G, frm, "تحويل إلى مخزن")

        frm = New Sales With {.Flag = Sales.FlagState.مشتريات}
        LoadRadio(G, frm, "المشتريات")

        frm = New Sales With {.Flag = Sales.FlagState.مردودات_مشتريات}
        LoadRadio(G, frm, "مردودات المشتريات")

        frm = New Sales With {.Flag = Sales.FlagState.المبيعات}
        LoadRadio(G, frm, "المبيعات")

        frm = New Sales With {.Flag = Sales.FlagState.مردودات_المبيعات}
        LoadRadio(G, frm, "مردودات المبيعات")
        
    End Sub

    Private Sub LoadGFreezingPackaged()
        Dim s As String = "Store.jpg"

        Dim G As WrapPanel = MakePanel("مجمدات تحت التعبئة", s)
        Dim frm As UserControl

        frm = New BasicForm With {.TableName = "GroupsPackaged"}
        LoadRadio(G, frm, "المجموعات")

        frm = New BasicForm2 With {.MainTableName = "GroupsPackaged", .MainSubId = "Id", .MainSubName = "Name", .lblMain_Content = "المجموعة", .TableName = "TypesPackaged", .MainId = "GroupId", .SubId = "Id", .SubName = "Name"}
        LoadRadio(G, frm, "الأنواع")

        frm = New Items3 With {.TableName = "ItemsPackaged", .GroupsTableName = "GroupsPackaged", .TypesTableName = "TypesPackaged"}
        LoadRadio(G, frm, "الأصناف")

        frm = New SalesFreezing With {.Flag = SalesFreezing.FlagState.إذن_توريد_تحت_التعبئة, .ItemsTable = "ItemsPackaged", .typestable = "TypesPackaged", .GroupsTable = "GroupsPackaged", .RPTFlag = 1}
        LoadRadio(G, frm, "إذن توريد من المصنع")

        frm = New SalesFreezing With {.Flag = SalesFreezing.FlagState.إذن_إضافة_تحت_التعبئة, .ItemsTable = "ItemsPackaged", .typestable = "TypesPackaged", .GroupsTable = "GroupsPackaged", .RPTFlag = 1}
        LoadRadio(G, frm, "إذن إضافة")

        frm = New SalesFreezing With {.Flag = SalesFreezing.FlagState.صرف_تحت_التعبئة, .ItemsTable = "ItemsPackaged", .typestable = "TypesPackaged", .GroupsTable = "GroupsPackaged", .RPTFlag = 1}
        LoadRadio(G, frm, "صرف")

        frm = New SalesFreezing With {.Flag = SalesFreezing.FlagState.مرتجع_صرف_تحت_التعبئة, .ItemsTable = "ItemsPackaged", .typestable = "TypesPackaged", .GroupsTable = "GroupsPackaged", .RPTFlag = 1}
        LoadRadio(G, frm, "مرتجع صرف")
    End Sub

    Private Sub LoadGFreezingFinal()
        Dim s As String = "Store.jpg"

        Dim G As WrapPanel = MakePanel("مجمدات منتجات نهائية", s)
        Dim frm As UserControl

        frm = New BasicForm With {.TableName = "GroupsFinal"}
        LoadRadio(G, frm, "المجموعات")

        frm = New BasicForm2 With {.MainTableName = "GroupsFinal", .MainSubId = "Id", .MainSubName = "Name", .lblMain_Content = "المجموعة", .TableName = "TypesFinal", .MainId = "GroupId", .SubId = "Id", .SubName = "Name"}
        LoadRadio(G, frm, "الأنواع")

        frm = New Items3 With {.TableName = "ItemsFinal", .GroupsTableName = "GroupsFinal", .TypesTableName = "TypesFinal"}
        LoadRadio(G, frm, "الأصناف")

        frm = New SalesFreezing With {.Flag = SalesFreezing.FlagState.صرف_نهائى, .ItemsTable = "ItemsFinal", .typestable = "TypesFinal", .GroupsTable = "GroupsFinal", .RPTFlag = 2}
        LoadRadio(G, frm, "صرف")

        frm = New SalesFreezing With {.Flag = SalesFreezing.FlagState.مرتجع_صرف_نهائى, .ItemsTable = "ItemsFinal", .typestable = "TypesFinal", .GroupsTable = "GroupsFinal", .RPTFlag = 2}
        LoadRadio(G, frm, "مرتجع صرف")

        frm = New SalesFreezing With {.Flag = SalesFreezing.FlagState.إذن_توريد_نهائى, .ItemsTable = "ItemsFinal", .typestable = "TypesFinal", .GroupsTable = "GroupsFinal", .RPTFlag = 2}
        LoadRadio(G, frm, "إذن توريد")

        frm = New Prices With {.Flag = 3}
        LoadRadio(G, frm, "أسعار الموردين")


    End Sub

    Private Sub LoadGStoresReports()
        Dim s As String = "Store.jpg"

        Dim G As WrapPanel = MakePanel("تقارير المخازن", s)
        Dim frm As UserControl

        frm = New RPT13 With {.Flag = 1}
        LoadRadio(G, frm, "طباعة الأصناف")

        frm = New RPT13 With {.Flag = 2}
        LoadRadio(G, frm, "طباعة الأصناف بالصور")

        frm = New RPT6 With {.Flag = 1, .Detail = 1}
        LoadRadio(G, frm, "حركات المخازن تفصيلى")

        frm = New RPT6 With {.Flag = 1, .Detail = 0}
        LoadRadio(G, frm, "حركات المخازن إجمالى")

        frm = New RPT6 With {.Flag = 2, .Detail = 1}
        LoadRadio(G, frm, "المشتريات تفصيلى")

        frm = New RPT6 With {.Flag = 2, .Detail = 0}
        LoadRadio(G, frm, "المشتريات إجمالى")

        frm = New RPT6 With {.Flag = 3, .Detail = 1}
        LoadRadio(G, frm, "المبيعات تفصيلى")

        frm = New RPT6 With {.Flag = 3, .Detail = 0}
        LoadRadio(G, frm, "المبيعات إجمالى")

        frm = New RPT12 With {.Flag = 1}
        LoadRadio(G, frm, "كارتة صنف")

        frm = New RPT12 With {.Flag = 2}
        LoadRadio(G, frm, "أرصدة الأصناف بمخزن معين")

        frm = New RPT12 With {.Flag = 3}
        LoadRadio(G, frm, "أرصدة الأصناف بجميع المخازن")

        frm = New RPT12 With {.Flag = 4}
        LoadRadio(G, frm, "أصناف تعدت حد الطلب")

        frm = New RPT12 With {.Flag = 5}
        LoadRadio(G, frm, "أرصدة مخزن بالقيمة")

        frm = New RPT12 With {.Flag = 6}
        LoadRadio(G, frm, "أرصدة جميع المخازن بالقيمة")


    End Sub

    Private Sub LoadGFreezingPackagedReports()
        Dim s As String = "Store.jpg"

        Dim G As WrapPanel = MakePanel("تقارير مجمدات تحت التعبئة", s)
        Dim frm As UserControl

        frm = New RPTfreezing With {.Flag = 1, .Detail = 1}
        LoadRadio(G, frm, "حركات المخازن")

        frm = New RPTfreezing With {.Flag = 1, .Detail = 0}
        LoadRadio(G, frm, "إجمالى وارد و منصرف")

        frm = New RPT12 With {.Flag = 8, .RPTFlag = 1}
        LoadRadio(G, frm, "أرصدة الأصناف بمخزن معين")

        frm = New RPT12 With {.Flag = 9, .RPTFlag = 1}
        LoadRadio(G, frm, "أرصدة الأصناف بجميع المخازن")

        frm = New RPT12 With {.Flag = 10, .RPTFlag = 1}
        LoadRadio(G, frm, "كارتة صنف")
    End Sub

    Private Sub LoadGFreezingFinalReports()
        Dim s As String = "Store.jpg"

        Dim G As WrapPanel = MakePanel("تقارير مجمدات منتجات نهائية", s)
        Dim frm As UserControl

        frm = New RPTfreezing With {.Flag = 2, .Detail = 1}
        LoadRadio(G, frm, "حركات المخازن")

        frm = New RPTfreezing With {.Flag = 2, .Detail = 0}
        LoadRadio(G, frm, "إجمالى وارد و منصرف")

        frm = New RPT12 With {.Flag = 8, .RPTFlag = 2}
        LoadRadio(G, frm, "أرصدة الأصناف بمخزن معين")

        frm = New RPT12 With {.Flag = 9, .RPTFlag = 2}
        LoadRadio(G, frm, "أرصدة الأصناف بجميع المخازن")

        frm = New RPT12 With {.Flag = 10, .RPTFlag = 2}
        LoadRadio(G, frm, "كارتة صنف")

        frm = New RPT1 With {.Flag = 6, .ItemsTable = "ItemsFinal", .GroupsTable = "GroupsFinal"}
        LoadRadio(G, frm, "المنصرف إلى عميل")

    End Sub

    Private Sub LoadTabs()

        LoadGFile()

        LoadGStores()
        LoadGPescol()
        LoadGFreezingPackaged()
        LoadGFreezingFinal()
        LoadGAccountants()

        LoadGSecurity()

        LoadGStoresReports()
        LoadGPescolReports()
        LoadGFreezingPackagedReports()
        LoadGFreezingFinalReports()
        LoadGAccountsReports()

    End Sub


End Class


