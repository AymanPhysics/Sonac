Imports System.Data
Imports System.Windows
Imports System.Windows.Media
Imports System.Management

Public Class SalesFreezing

    Public MainTableName As String = "Stores"
    Public MainSubId As String = "Id"
    Public MainSubName As String = "Name"

    Public TableName As String = "SalesFreezingMaster"
    Public TableDetailsName As String = "SalesFreezingDetails"

    Public MainId As String = "StoreId"
    Public MainId2 As String = "Flag"
    Public SubId As String = "InvoiceNo"

    Public RPTFlag As Integer = 0

    Dim dv As New DataView
    Dim HelpDt As New DataTable
    Dim dt As New DataTable
    Dim bm As New BasicMethods

    Public ItemsTable As String = ""
    Public GroupsTable As String = ""
    Public typestable As String = ""

    Dim StaticsDt As New DataTable
    WithEvents G As New MyGrid
    WithEvents MyTimer As New Threading.DispatcherTimer
    Public Flag As Integer
    Public FirstColumn As String = "الكـــــود", SecondColumn As String = "الاســــــــــــم", Statement As String = ""
    Dim Gp As String = "الأقسام الرئيسية", Tp As String = "الأقسام الفرعية", It As String = "الأصناف"

    Public Structure FlagState
        'Don't forget to edit RPTs and Stored Procedures after Editing this structure
        Shared إذن_توريد_تحت_التعبئة As Integer = 1
        Shared إذن_إضافة_تحت_التعبئة As Integer = 2
        Shared صرف_تحت_التعبئة As Integer = 3
        Shared مرتجع_صرف_تحت_التعبئة As Integer = 4
        Shared صرف_نهائى As Integer = 5
        Shared مرتجع_صرف_نهائى As Integer = 6
        Shared إذن_توريد_نهائى As Integer = 7
    End Structure



    Sub NewId()
        InvoiceNo.Clear()
        'InvoiceNo.IsEnabled = False
    End Sub

    Sub UndoNewId()
        'InvoiceNo.IsEnabled = True
    End Sub

    Private Sub Sales_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return

        RdoGrouping_Checked(Nothing, Nothing)
        
        TabItem1.Header = "" ' TryCast(TryCast(Me.Parent, TabItem).Header, TabsHeader).MyTabHeader

        If Flag = FlagState.إذن_إضافة_تحت_التعبئة Then
            lblToId.Visibility = Visibility.Visible
            ToId.Visibility = Visibility.Visible
            ToName.Visibility = Visibility.Visible
            lblToId.Content = "المورد"
        ElseIf Flag = FlagState.صرف_نهائى Or Flag = FlagState.مرتجع_صرف_نهائى Then
            lblToId.Visibility = Visibility.Visible
            ToId.Visibility = Visibility.Visible
            ToName.Visibility = Visibility.Visible
            lblToId.Content = "العميل"
        Else
            lblToId.Visibility = Visibility.Hidden
            ToId.Visibility = Visibility.Hidden
        End If

        If Not Flag = FlagState.صرف_نهائى Then
            GDis.Visibility = Visibility.Hidden
        End If

        lblDocNo.Visibility = Visibility.Hidden
        DocNo.Visibility = Visibility.Hidden
        lblLastEntry.Visibility = Visibility.Hidden
        Label1.Visibility = Visibility.Hidden

        bm.Fields = New String() {MainId, MainId2, SubId, "DayDate", "ToId", "Notes", "Total", "DocNo", "TotalPrice", "TotalNo", "TotalPriceBeforeDiscount", "Per1", "Per2", "Val1", "Val2", "Nolon"}
        bm.control = New Control() {StoreId, txtFlag, InvoiceNo, DayDate, ToId, Notes, TotalWeight, DocNo, TotalPrice, TotalNo, TotalPriceBeforeDiscount, Per1, Per2, Val1, Val2, Nolon}
        bm.KeyFields = New String() {MainId, MainId2, SubId}

        bm.Table_Name = TableName

        LoadGroups()
        LoadAllItems()

        LoadWFH()
        DayDate.SelectedDate = Nothing
        DayDate.SelectedDate = bm.MyGetDate() 'Md.CurrentDate
        StoreId.Text = Md.StoreId
        StoreId_LostFocus(Nothing, Nothing)
        btnNew_Click(sender, e)
    End Sub


    Structure GC
        Shared Id As String = "Id"
        Shared Name As String = "Name"
        Shared Brand As String = "Brand"
        Shared Qty As String = "Qty"
        Shared weight As String = "Weight"
        Shared TotalWeight As String = "TotalWeight"
        Shared Price As String = "Price"
        Shared Value As String = "Value"
    End Structure


    Private Sub LoadWFH()
        'WFH.Background = New SolidColorBrush(Colors.LightSalmon)
        'WFH.Foreground = New SolidColorBrush(Colors.Red)
        WFH.Child = G

        G.Columns.Clear()
        G.ForeColor = System.Drawing.Color.DarkBlue
        G.Columns.Add(GC.Id, "كود الصنف")
        G.Columns.Add(GC.Name, "اسم الصنف")

        Dim GCBrand As New Forms.DataGridViewComboBoxColumn
        GCBrand.HeaderText = "العلامة التجارية"
        GCBrand.Name = GC.Brand
        bm.FillCombo("select Id,Name From Brands union select 0 Id,'-' Name", GCBrand)
        G.Columns.Add(GCBrand)

        G.Columns.Add(GC.Qty, "العدد")
        G.Columns.Add(GC.weight, "الوزن")
        G.Columns.Add(GC.TotalWeight, "إجمالى الوزن")
        G.Columns.Add(GC.Price, "السعر")
        G.Columns.Add(GC.Value, "القيمة")

        G.Columns(GC.Id).FillWeight = 110
        G.Columns(GC.Name).FillWeight = 300
        G.Columns(GC.Brand).FillWeight = 100
        G.Columns(GC.Qty).FillWeight = 100
        G.Columns(GC.weight).FillWeight = 100
        G.Columns(GC.TotalWeight).FillWeight = 100
        G.Columns(GC.Price).FillWeight = 100
        G.Columns(GC.Value).FillWeight = 100

        G.Columns(GC.Name).ReadOnly = True
        G.Columns(GC.TotalWeight).ReadOnly = True

        G.Columns(GC.Price).Visible = False
        G.Columns(GC.Value).Visible = False

        lblTotalNo.Visibility = Visibility.Hidden
        TotalNo.Visibility = Visibility.Hidden
        lblTotalPrice.Visibility = Visibility.Hidden
        TotalPrice.Visibility = Visibility.Hidden

        If Flag = FlagState.إذن_إضافة_تحت_التعبئة Or Flag = FlagState.إذن_توريد_تحت_التعبئة Or Flag = FlagState.صرف_تحت_التعبئة Or Flag = FlagState.مرتجع_صرف_تحت_التعبئة Then
            G.Columns(GC.Brand).Visible = False
            G.Columns(GC.Qty).Visible = False
            G.Columns(GC.TotalWeight).Visible = False
            G.Columns(GC.weight).HeaderText = "إجمالى الوزن"
        End If

        If Flag = FlagState.صرف_نهائى Or Flag = FlagState.مرتجع_صرف_نهائى Then
            G.Columns(GC.Price).Visible = True
            G.Columns(GC.Value).Visible = True
            lblTotalNo.Visibility = Visibility.Visible
            TotalNo.Visibility = Visibility.Visible
            lblTotalPrice.Visibility = Visibility.Visible
            TotalPrice.Visibility = Visibility.Visible
        End If

        If Flag = FlagState.إذن_توريد_نهائى Then
            lblTotalNo.Visibility = Visibility.Visible
            TotalNo.Visibility = Visibility.Visible
        End If

        AddHandler G.CellEndEdit, AddressOf GridCalcRow
        AddHandler G.KeyDown, AddressOf GridKeyDown
    End Sub

    
    Sub LoadGroups()
        Try
            WGroups.Children.Clear()
            WTypes.Children.Clear()
            WItems.Children.Clear()
            TabGroups.Header = Gp
            TabTypes.Header = Tp
            TabItems.Header = It
            Dim dt As DataTable = bm.ExcuteAdapter("Load" & GroupsTable)
            For i As Integer = 0 To dt.Rows.Count - 1
                Dim x As New Button
                SetStyle(x)
                x.Name = "TabItem_" & dt.Rows(i)("Id").ToString
                x.Tag = dt.Rows(i)("Id").ToString
                x.Content = dt.Rows(i)("Name").ToString
                x.ToolTip = dt.Rows(i)("Name").ToString
                WGroups.Children.Add(x)
                AddHandler x.Click, AddressOf LoadTypes
            Next
        Catch
        End Try
    End Sub




    Private Sub LoadTypes(ByVal sender As Object, ByVal e As RoutedEventArgs)
        Try
            Dim xx As Button = sender
            WTypes.Tag = xx.Tag
            WTypes.Children.Clear()
            WItems.Children.Clear()

            TabTypes.Header = Tp & " - " & xx.Content.ToString
            TabItems.Header = It

            Dim dt As DataTable = bm.ExcuteAdapter("Load" & typestable, New String() {"GroupId"}, New String() {xx.Tag.ToString})

            For i As Integer = 0 To dt.Rows.Count - 1
                Dim x As New Button
                SetStyle(x)
                'bm.SetImage(x, CType(dt.Rows(i)("Image"), Byte()))
                x.Name = "TabItem_" & xx.Tag.ToString & "_" & dt.Rows(i)("Id").ToString
                x.Tag = dt.Rows(i)("Id").ToString
                x.Content = dt.Rows(i)("Name").ToString
                x.ToolTip = dt.Rows(i)("Name").ToString
                WTypes.Children.Add(x)
                AddHandler x.Click, AddressOf LoadItems
            Next
        Catch
        End Try
    End Sub


    Sub LoadAllItems()
        Try
            HelpDt = bm.ExcuteAdapter("Select Id,Name From " & ItemsTable)
            HelpDt.TableName = "tbl"
            HelpDt.Columns(0).ColumnName = FirstColumn
            HelpDt.Columns(1).ColumnName = SecondColumn

            dv.Table = HelpDt
            HelpGD.ItemsSource = dv
            HelpGD.Columns(0).Width = 75
            HelpGD.Columns(1).Width = 298

            HelpGD.SelectedIndex = 0
        Catch
        End Try

    End Sub

    Private Sub txtId_Enter(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtID.GotFocus
        Try
            dv.Sort = FirstColumn
        Catch
        End Try
    End Sub

    Private Sub txtName_Enter(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtName.GotFocus
        Try
            dv.Sort = SecondColumn
        Catch
        End Try
    End Sub

    Private Sub txtId_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtID.TextChanged, txtName.TextChanged
        Try
            dv.RowFilter = " [" & FirstColumn & "] >" & IIf(txtID.Text.Trim = "", 0, txtID.Text) & " and [" & SecondColumn & "] like '" & txtName.Text & "%'"
        Catch
        End Try
    End Sub


    Private Sub HelpGD_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles txtID.PreviewKeyDown, txtName.PreviewKeyDown
        Try
            If e.Key = Input.Key.Up Then
                HelpGD.SelectedIndex = HelpGD.SelectedIndex - 1
            ElseIf e.Key = Input.Key.Down Then
                HelpGD.SelectedIndex = HelpGD.SelectedIndex + 1
            End If
        Catch ex As Exception
        End Try
    End Sub


    Private Sub HelpGD_MouseDoubleClick(ByVal sender As Object, ByVal e As System.Windows.Input.MouseButtonEventArgs) Handles HelpGD.MouseDoubleClick
        Try
            AddItem(HelpGD.Items(HelpGD.SelectedIndex)(0))
        Catch ex As Exception
        End Try
    End Sub

    Private Sub LoadItems(ByVal sender As Object, ByVal e As RoutedEventArgs)
        Try
            Dim xx As Button = sender
            WItems.Tag = xx.Tag
            WItems.Children.Clear()

            TabItems.Header = It & " - " & xx.Content.ToString

            Dim dt As DataTable = bm.ExcuteAdapter("Select * From " & ItemsTable & " where GroupId=" & WTypes.Tag.ToString & " and TypeId=" & xx.Tag.ToString)

            For i As Integer = 0 To dt.Rows.Count - 1
                Dim x As New Button
                SetStyle(x)
                'bm.SetImage(x, CType(dt.Rows(i)("Image"), Byte()))
                x.Tag = dt.Rows(i)("Id").ToString
                x.Content = dt.Rows(i)("Name").ToString
                x.ToolTip = dt.Rows(i)("Name").ToString
                WItems.Children.Add(x)
                AddHandler x.Click, AddressOf TabItem
            Next
        Catch
        End Try
    End Sub

    Private Sub TabItem(ByVal sender As Object, ByVal e As RoutedEventArgs)
        Dim x As Button = sender
        AddItem(x.Tag)
    End Sub

    Sub AddItem(ByVal Id As String, Optional ByVal i As Integer = -1, Optional ByVal Add As Decimal = 1)
        Try
            If Not TabControl1.SelectedIndex = 0 Then TabControl1.SelectedIndex = 0
            Dim Exists As Boolean = False
            Dim Move As Boolean = False
            If i = -1 Then Move = True

            G.AutoSizeColumnsMode = Forms.DataGridViewAutoSizeColumnsMode.Fill
            If i = -1 Then
                'For x As Integer = 0 To G.Rows.Count - 1
                '    If Not G.Rows(x).Cells(GC.Id).Value Is Nothing AndAlso G.Rows(x).Cells(GC.Id).Value.ToString = Id.ToString AndAlso Not G.Rows(x).ReadOnly AndAlso Not G.Rows(x).Cells(GC.IsPrinted).Value = 1 Then
                '        i = x
                '        Exists = True
                '        GoTo Br
                '    End If
                'Next
                i = G.Rows.Add()
Br:
            End If

            Dim dt As DataTable = bm.ExcuteAdapter("Select * From " & ItemsTable & " where Id='" & Id & "'")
            
            Dim dr() As DataRow = dt.Select("Id='" & Id & "'")
            If dr.Length = 0 Then
                If Not G.Rows(i).Cells(GC.Id).Value Is Nothing Or G.Rows(i).Cells(GC.Id).Value <> "" Then bm.ShowMSG("هذا الصنف غير موجود")
                ClearRow(i)
                CalcTotal()
                Return
            End If
            G.Rows(i).Cells(GC.Id).Value = dr(0)(GC.Id)
            G.Rows(i).Cells(GC.Name).Value = dr(0)(GC.Name)
            G.Rows(i).Cells(GC.Price).Value = dr(0)(GC.Price)

            'G.Rows(i).Cells(GC.Unit).Value = dr(0)(GC.Unit)
            'LoadItemUint(i)

            If Val(G.Rows(i).Cells(GC.Qty).Value) = 0 Then Add = 1
            G.Rows(i).Cells(GC.Qty).Value = Add + Val(G.Rows(i).Cells(GC.Qty).Value)
            If G.Rows(i).Cells(GC.Brand).Value Is Nothing Then
                G.Rows(i).Cells(GC.Brand).Value = "0"
            End If
            CalcRow(i)
            If Move Then
                G.Focus()
                G.Rows(i).Selected = True
                G.FirstDisplayedScrollingRowIndex = i
                If G.Rows(i).Cells(GC.Qty).Visible = True Then
                    G.CurrentCell = G.Rows(i).Cells(GC.Qty)
                Else
                    G.CurrentCell = G.Rows(i).Cells(GC.weight)
                End If
                G.EditMode = Forms.DataGridViewEditMode.EditOnEnter
                G.BeginEdit(True)
            End If
            If Exists Then
                G.Rows(i).Selected = True
                G.FirstDisplayedScrollingRowIndex = i
                G.CurrentCell = G.Rows(i).Cells(GC.weight)
                G.CurrentCell = G.Rows(i).Cells(GC.Qty)
                G.EditMode = Forms.DataGridViewEditMode.EditOnEnter
                G.BeginEdit(True)
            End If
        Catch
            If i <> -1 Then
                ClearRow(i)
            End If
        End Try
    End Sub

    Dim lop As Boolean = False
    Sub CalcRow(ByVal i As Integer)
        Try
            If G.Rows(i).Cells(GC.Id).Value Is Nothing OrElse G.Rows(i).Cells(GC.Id).Value.ToString = "" Then
                ClearRow(i)
                CalcTotal()
                Return
            End If
            G.Rows(i).Cells(GC.Qty).Value = Val(G.Rows(i).Cells(GC.Qty).Value)
            G.Rows(i).Cells(GC.weight).Value = Val(G.Rows(i).Cells(GC.weight).Value)
            G.Rows(i).Cells(GC.TotalWeight).Value = Math.Round(Val(G.Rows(i).Cells(GC.Qty).Value) * Val(G.Rows(i).Cells(GC.weight).Value), 3)
            G.Rows(i).Cells(GC.Value).Value = Math.Round(Val(G.Rows(i).Cells(GC.TotalWeight).Value) * Val(G.Rows(i).Cells(GC.Price).Value), 3)
        Catch ex As Exception
            ClearRow(i)
        End Try
        CalcTotal()
    End Sub

    Sub ClearRow(ByVal i As Integer)
        G.Rows(i).Cells(GC.Id).Value = Nothing
        G.Rows(i).Cells(GC.Name).Value = Nothing
        G.Rows(i).Cells(GC.Brand).Value = Nothing
        G.Rows(i).Cells(GC.Qty).Value = Nothing
        G.Rows(i).Cells(GC.weight).Value = Nothing
        G.Rows(i).Cells(GC.TotalWeight).Value = Nothing
        G.Rows(i).Cells(GC.Price).Value = Nothing
        G.Rows(i).Cells(GC.Value).Value = Nothing
    End Sub
   
    Private Sub GridCalcRow(ByVal sender As Object, ByVal e As Forms.DataGridViewCellEventArgs)
        If G.Columns(e.ColumnIndex).Name = GC.Id Then
            AddItem(G.Rows(e.RowIndex).Cells(GC.Id).Value, e.RowIndex, 0)
            'ElseIf G.Columns(e.ColumnIndex).Name = GC.UnitId Then
            '    LoadItemPrice(e.RowIndex)
        End If
        G.EditMode = Forms.DataGridViewEditMode.EditOnEnter
        CalcRow(e.RowIndex)
    End Sub


    Private Sub StoreId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles StoreId.KeyUp
        If bm.ShowHelp("Stores", StoreId, StoreName, e, "select Id,Name from Stores") Then
            StoreId_LostFocus(StoreId, Nothing)
        End If
    End Sub


    Private Sub StoreId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles StoreId.LostFocus
        bm.LostFocus(StoreId, StoreName, "select Name from Stores where Id=" & StoreId.Text.Trim())
        btnNew_Click(Nothing, Nothing)
    End Sub

    Private Sub ToId_KeyUp(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles ToId.KeyUp
        Dim Title As String = "", tbl As String = ""
        If Flag = FlagState.صرف_نهائى Or Flag = FlagState.مرتجع_صرف_نهائى Then
            tbl = "Customers"
            Title = "العملاء"
        ElseIf Flag = FlagState.إذن_إضافة_تحت_التعبئة Then
            tbl = "Suppliers"
            Title = "الموردين"
        End If
        bm.ShowHelp(Title, ToId, ToName, e, "select Id,Name from " & tbl)
    End Sub

    Private Sub ToId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles ToId.LostFocus
        Dim tbl As String
        If Flag = FlagState.إذن_إضافة_تحت_التعبئة Then
            tbl = "Suppliers"
        ElseIf Flag = FlagState.صرف_نهائى Or Flag = FlagState.مرتجع_صرف_نهائى Then
            tbl = "Customers"
        Else
            Return
        End If
        bm.LostFocus(ToId, ToName, "select Name from " & tbl & " where Id=" & ToId.Text.Trim())
    
    End Sub

    Sub FillControls()
        If lop Then Return
        lop = True
        UndoNewId()
        bm.FillControls()

        ToId_LostFocus(Nothing, Nothing)

        Dim dt As DataTable = bm.ExcuteAdapter("select SD.* /*,It.Unit,It.UnitSub*/ from SalesFreezingDetails SD left join " & ItemsTable & " It on(SD.ItemId=It.Id) where SD.StoreId=" & StoreId.Text & " and SD.InvoiceNo=" & InvoiceNo.Text & bm.AppendWhere)

        G.Rows.Clear()
        For i As Integer = 0 To dt.Rows.Count - 1
            G.Rows.Add()
            G.Rows(i).Cells(GC.Id).Value = dt.Rows(i)("ItemId").ToString
            G.Rows(i).Cells(GC.Name).Value = dt.Rows(i)("ItemName").ToString
            G.Rows(i).Cells(GC.Brand).Value = dt.Rows(i)("Brand").ToString
            G.Rows(i).Cells(GC.Qty).Value = dt.Rows(i)("Qty").ToString
            G.Rows(i).Cells(GC.weight).Value = dt.Rows(i)("Weight").ToString
            G.Rows(i).Cells(GC.TotalWeight).Value = dt.Rows(i)("TotalWeight").ToString
            G.Rows(i).Cells(GC.Price).Value = dt.Rows(i)("Price").ToString
            G.Rows(i).Cells(GC.Value).Value = dt.Rows(i)("Value").ToString
            CalcRow(i)
        Next
        CalcTotal()
        Notes.Focus()
        G.RefreshEdit()
        lop = False
    End Sub

    Private Sub btnLast_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnLast.Click
        bm.FirstLast(New String() {MainId, MainId2, SubId}, "Max", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub

    Private Sub btnNext_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnNext.Click
        bm.NextPrevious(New String() {MainId, MainId2, SubId}, New String() {StoreId.Text, Flag, InvoiceNo.Text}, "Next", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub

    Private Sub btnPrint_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles btnPrint.Click
        btnSave_Click(sender, e)
    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If StoreId.Text.Trim = "" Then Return
        If Not CType(sender, Button).IsEnabled Then Return


        If ToId.Visibility = Visibility.Visible AndAlso ToId.Text.Trim = "" Then
            bm.ShowMSG("برجاء تحديد " & lblToId.Content)
            ToId.Focus()
            Return
        End If

        G.EndEdit()
        Try
            CalcRow(G.CurrentRow.Index)
        Catch ex As Exception
        End Try

        ToId.Text = Val(ToId.Text)


        Dim State As BasicMethods.SaveState = BasicMethods.SaveState.Update
        'If InvoiceNo.Text.Trim = "" Then
        '    InvoiceNo.Text = bm.ExecuteScalar("select max(InvoiceNo)+1 from SalesFreezingDetails where " & MainId & "='" & StoreId.Text & "' and " & MainId2 & "='" & Flag & "'")
        '    If InvoiceNo.Text = "" Then InvoiceNo.Text = "1"
        '    lblLastEntry.Text = InvoiceNo.Text
        '    'lblLastEntry.Foreground = System.Windows.Media.Brushes.Red
        '    'System.Threading.Thread.Sleep(500)
        '    'lblLastEntry.Foreground = System.Windows.Media.Brushes.Blue
        '    State = BasicMethods.SaveState.Insert
        'End If

        bm.DefineValues()
        If Not bm.Save(New String() {MainId, MainId2, SubId}, New String() {StoreId.Text, Flag, InvoiceNo.Text.Trim}) Then
            If State = BasicMethods.SaveState.Insert Then
                InvoiceNo.Text = ""
                lblLastEntry.Text = ""
            End If
            Return
        End If

        If Not bm.SaveGrid(G, "SalesFreezingDetails", New String() {"StoreId", "Flag", "InvoiceNo"}, New String() {StoreId.Text, txtFlag.Text, InvoiceNo.Text}, New String() {"ItemId", "ItemName", "Brand", "Qty", "Weight", "TotalWeight", "Price", "Value"}, New String() {GC.Id, GC.Name, GC.Brand, GC.Qty, GC.weight, GC.TotalWeight, GC.Price, GC.Value}, New VariantType() {VariantType.Integer, VariantType.String, VariantType.Integer, VariantType.Decimal, VariantType.Decimal, VariantType.Decimal, VariantType.Decimal, VariantType.Decimal}, New String() {GC.Id}) Then Return

        Select Case CType(sender, Button).Name
            Case btnPrint.Name
                State = BasicMethods.SaveState.Print
        End Select


        'If TestSalesAndOnly() Then PrintPone(1)
        If sender Is btnPrint And (btnPrint.IsEnabled) Then
            PrintPone()
            'txtID_Leave(Nothing, Nothing)
            'AllowClose = True
            'Return
        End If

        If Not DontClear Then btnNew_Click(sender, e)
        AllowClose = True
    End Sub

    Private Sub btnFirst_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFirst.Click
        bm.FirstLast(New String() {MainId, MainId2, SubId}, "Min", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub

    Private Sub btnNew_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnNew.Click
        ClearControls()
        If sender Is btnNew Then DayDate.SelectedDate = bm.MyGetDate()
        InvoiceNo.Text = bm.ExecuteScalar("select max(InvoiceNo)+1 from SalesFreezingDetails where " & MainId & "='" & StoreId.Text & "' and " & MainId2 & "='" & Flag & "'")
        If InvoiceNo.Text = "" Then InvoiceNo.Text = "1"
        InvoiceNo.SelectAll()
        InvoiceNo.Focus()
    End Sub

    Sub ClearControls()
        Try
            NewId()
            Dim d As DateTime = Nothing
            Try
                If d.Year = 1 Then d = bm.MyGetDate
                d = DayDate.SelectedDate
            Catch ex As Exception
            End Try

            'Dim s As String = Shift.SelectedValue.ToString
            Dim st As String = StoreId.Text

            bm.ClearControls(False)
            ToId_LostFocus(Nothing, Nothing)

            DayDate.SelectedDate = d
            StoreId.Text = st

            txtFlag.Text = Flag
            bm.AppendWhere = " and Flag=" & Flag
            G.Rows.Clear()
            CalcTotal()
            'InvoiceNo.Text = bm.ExecuteScalar("select max(InvoiceNo)+1 from SalesFreezingDetails where " & MainId & "='" & StoreId.Text & "'" & bm.AppendWhere)
            'If InvoiceNo.Text = "" Then InvoiceNo.Text = "1"
        Catch
        End Try
    End Sub

    Private Sub btnDelete_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        If bm.ShowDeleteMSG() Then
            bm.ExecuteNonQuery("delete from " & TableName & " where " & SubId & "='" & InvoiceNo.Text.Trim & "' and " & MainId & " ='" & StoreId.Text & "' and " & MainId2 & " ='" & Flag & "'")

            bm.ExecuteNonQuery("delete from " & TableDetailsName & " where " & SubId & "='" & InvoiceNo.Text.Trim & "' and " & MainId & " ='" & StoreId.Text & "' and " & MainId2 & " ='" & Flag & "'")

            btnNew_Click(sender, e)
        End If
    End Sub


    Private Sub btnPrevios_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnPrevios.Click
        bm.NextPrevious(New String() {MainId, MainId2, SubId}, New String() {StoreId.Text, Flag, InvoiceNo.Text}, "Back", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub
    Dim lv As Boolean = False
    Private Sub txtID_Leave(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles InvoiceNo.LostFocus
        If lv Then
            Return
        End If
        lv = True

        If Val(InvoiceNo.Text) = 0 Then
            btnNew_Click(Nothing, Nothing)
            lv = False
            Return
        End If

        bm.DefineValues()
        Dim dt As New DataTable
        bm.RetrieveAll(New String() {MainId, MainId2, SubId}, New String() {StoreId.Text, Flag, InvoiceNo.Text.Trim}, dt)
        If dt.Rows.Count = 0 Then
            Dim s As String = InvoiceNo.Text
            ClearControls()
            InvoiceNo.Text = s

            lv = False
            Return
        End If
        FillControls()

        If Not bm.ShowDeleteMSG("هل تريد تعديل الملف؟") Then
            btnNew_Click(sender, e)
            lv = False
            Return
        End If

        lv = False
    End Sub

    Private Sub txtID_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles StoreId.KeyDown, InvoiceNo.KeyDown, ToId.KeyDown, txtID.KeyDown
        bm.MyKeyPress(sender, e)
    End Sub

    Dim AllowClose As Boolean = False
    'Private Sub MyBase_FormClosing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles MyBase.FormClosing
    '    If Not btnSave.Enabled Then Exit Sub
    '    Select Case bm.RequestDelete
    '        Case BasicMethods.CloseState.Yes
    '            AllowClose = False
    '            btnSave_Click(Nothing, Nothing)
    '            If Not AllowClose Then e.Cancel = True
    '        Case BasicMethods.CloseState.No

    '        Case BasicMethods.CloseState.Cancel
    '            e.Cancel = True
    '    End Select
    'End Sub

    Private Sub btnDeleteRow_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles btnDeleteRow.Click
        Try
            If Not G.CurrentRow.ReadOnly AndAlso bm.ShowDeleteMSG("MsgDeleteRow") Then
                G.Rows.Remove(G.CurrentRow)
                CalcTotal()
            End If
        Catch ex As Exception
        End Try
    End Sub


    Private Sub PrintPone()

        Dim rpt As New ReportViewer
        rpt.paraname = New String() {"@FromDate", "@ToDate", "@Flag", "@StoreId", "@FromInvoiceNo", "@ToInvoiceNo", "@RPTFlag1", "@RPTFlag2", "Header"}
        rpt.paravalue = New String() {DayDate.SelectedDate, DayDate.SelectedDate, Flag, StoreId.Text, InvoiceNo.Text, InvoiceNo.Text, RPTFlag, 0, CType(Parent, Page).Title}
        Select Case Flag
            Case FlagState.إذن_إضافة_تحت_التعبئة, FlagState.إذن_توريد_تحت_التعبئة, FlagState.صرف_تحت_التعبئة, FlagState.مرتجع_صرف_تحت_التعبئة
                rpt.Rpt = "SalesFreezingPone2.rpt"
            Case FlagState.صرف_نهائى, FlagState.مرتجع_صرف_نهائى
                rpt.Rpt = "SalesFreezingPone3.rpt"
            Case FlagState.إذن_توريد_نهائى
                rpt.Rpt = "SalesFreezingPone.rpt"
        End Select
        rpt.Print(, , 2)
        'rpt.ShowDialog()


    End Sub


    Private Sub RdoGrouping_Checked(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles RdoGrouping.Checked, RdoSearch.Checked
        Try
            If txtID Is Nothing Then Return
            If RdoGrouping.IsChecked Then
                txtID.Visibility = Visibility.Hidden
                txtName.Visibility = Visibility.Hidden
                HelpGD.Visibility = Visibility.Hidden
                PanelGroups.Visibility = Visibility.Visible
                PanelTypes.Visibility = Visibility.Visible
                PanelItems.Visibility = Visibility.Visible
            ElseIf RdoSearch.IsChecked Then
                txtID.Visibility = Visibility.Visible
                txtName.Visibility = Visibility.Visible
                HelpGD.Visibility = Visibility.Visible
                PanelGroups.Visibility = Visibility.Hidden
                PanelTypes.Visibility = Visibility.Hidden
                PanelItems.Visibility = Visibility.Hidden
            End If
        Catch
        End Try
    End Sub


    Dim LopCalc As Boolean = False
    Private Sub CalcTotal() Handles TotalWeight.TextChanged, ToId.LostFocus
        If LopCalc Or lop Then Return
        Try
            LopCalc = True
            TotalWeight.Text = Math.Round(0, 3)
            TotalPriceBeforeDiscount.Text = Math.Round(0, 3)
            TotalNo.Text = Math.Round(0, 3)

            For i As Integer = 0 To G.Rows.Count - 1
                If G.Rows(i).Cells(GC.Id).Value Is Nothing Then Continue For
                TotalWeight.Text += Val(G.Rows(i).Cells(GC.TotalWeight).Value)
                TotalPriceBeforeDiscount.Text += Val(G.Rows(i).Cells(GC.Value).Value)
                TotalNo.Text += Val(G.Rows(i).Cells(GC.Qty).Value)
            Next
            CalcTotal2()
            LopCalc = False
        Catch ex As Exception
        End Try
        G.Focus()
    End Sub

    Sub CalcTotal2()
        TotalPrice.Text = Val(TotalPriceBeforeDiscount.Text) - Val(Val1.Text) + Val(Nolon.Text) - Val(Val2.Text)
    End Sub

    Dim DontClear As Boolean = False

    Private Sub GridKeyDown(ByVal sender As Object, ByVal e As Forms.KeyEventArgs)
        Try
            'bm.ShowHelpAddingItems(Me, sender, e, G.CurrentRow.Index + 1)
        Catch ex As Exception
        End Try
    End Sub

    Sub SetStyle(ByVal x As Button)
        x.Style = Application.Current.FindResource("GlossyCloseButton")
        x.VerticalContentAlignment = VerticalAlignment.Center
        x.Width = 100
        x.Height = 50
        x.Margin = New Thickness(10, 10, 0, 0)
    End Sub


    'Private Sub LoadItemUint(i As Integer)
    '    Dim Id As Integer = Val(G.Rows(i).Cells(GC.Id).Value)
    '    Dim dt As DataTable = bm.ExcuteAdapter("Select * From Items where Id='" & Id & "' and " & ItemWhere() & "")
    '    bm.FillCombo("select 0 Id,Unit Name From Items where Id='" & Id & "' and " & ItemWhere() & " union select 1 Id,UnitSub Name From Items where Id='" & Id & "' and " & ItemWhere() & " union select 2 Id,UnitSub2 Name From Items where Id='" & Id & "' and " & ItemWhere() & "", G.Rows(i).Cells(GC.UnitId))
    '    G.Rows(i).Cells(GC.UnitId).Value = 0
    'End Sub


    Private Sub Per1_TextChanged(sender As Object, e As TextChangedEventArgs) Handles Per1.TextChanged
        Val1.Text = Val(TotalPriceBeforeDiscount.Text) * Val(Per1.Text) / 100
        CalcTotal2()
    End Sub

    Private Sub Per2_TextChanged(sender As Object, e As TextChangedEventArgs) Handles Per2.TextChanged, Nolon.TextChanged
        Val2.Text = Val(Nolon.Text) * Val(Per2.Text) / 100
        CalcTotal2()
    End Sub

End Class
