Imports System.Data

Public Class RPTfreezing
    Dim bm As New BasicMethods
    Public Flag As Integer = 0
    Public Detail As Integer = 0
    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles Button2.Click
        Dim rpt As New ReportViewer
        rpt.paraname = New String() {"@FromDate", "@ToDate", "@Flag", "@StoreId", "@FromInvoiceNo", "@ToInvoiceNo", "@RPTFlag1", "@RPTFlag2", "Header", "@ToId"}
        rpt.paravalue = New String() {FromDate.SelectedDate, ToDate.SelectedDate, 0, Val(StoreId.Text), Val(FromInvoice.Text), Val(ToInvoice.Text), Flag, ComboBox1.SelectedValue.ToString, CType(Parent, Page).Title, Val(ToId.Text)}

        Select Case Detail
            Case 0
                rpt.Rpt = "SalesFreezing2.rpt"
                If Flag = 2 Then rpt.Rpt = "SalesFreezing2_1.rpt"
            Case 1
                rpt.Rpt = "SalesFreezing.rpt"
                If Flag = 2 Then rpt.Rpt = "SalesFreezing_1.rpt"
        End Select
        rpt.ShowDialog()
    End Sub

    Private Sub UserControl_Loaded(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles MyBase.Loaded
        If bm.TestIsLoaded(Me) Then Return

        If Flag = 5 Then
            Label2.Visibility = Visibility.Hidden
            ComboBox1.Visibility = Visibility.Hidden
            IsClosedOnly.Visibility = Visibility.Hidden
        End If

        LoadCbo()
        Dim MyNow As DateTime = bm.MyGetDate()
        FromDate.SelectedDate = New DateTime(MyNow.Year, MyNow.Month, MyNow.Day, 0, 0, 0)
        ToDate.SelectedDate = New DateTime(MyNow.Year, MyNow.Month, MyNow.Day, 0, 0, 0)
        StoreId.Text = ""
        StoreId_LostFocus(Nothing, Nothing)
    End Sub

    Private Sub StoreId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles StoreId.KeyUp
        If bm.ShowHelp("Stores", StoreId, StoreName, e, "select Id,Name from Stores") Then
            StoreId_LostFocus(StoreId, Nothing)
        End If
    End Sub


    Private Sub StoreId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles StoreId.LostFocus
        bm.LostFocus(StoreId, StoreName, "select Name from Stores where Id=" & StoreId.Text.Trim())
    End Sub

    Private Sub LoadCbo()
        Dim dt As New DataTable("tbl")
        dt.Columns.Add("Id")
        dt.Columns.Add("Name")
        dt.Rows.Add(New String() {0, "الكل"})
        Select Case Flag
            Case 1
                dt.Rows.Add(New String() {1, "إذن توريد من المصنع"})
                dt.Rows.Add(New String() {2, "إذن إضافة"})
                dt.Rows.Add(New String() {3, "صرف"})
                dt.Rows.Add(New String() {4, "مرتجع صرف"})

                lblToId.Visibility = Visibility.Hidden
                ToId.Visibility = Visibility.Hidden
                ToName.Visibility = Visibility.Hidden
                lblToId.Content = "المورد"

            Case 2
                dt.Rows.Add(New String() {5, "صرف"})
                dt.Rows.Add(New String() {6, "مرتجع صرف"})
                dt.Rows.Add(New String() {7, "إذن توريد"})

                lblToId.Visibility = Visibility.Visible
                ToId.Visibility = Visibility.Visible
                ToName.Visibility = Visibility.Visible
                lblToId.Content = "العميل"

        End Select


        Dim dv As New DataView
        dv.Table = dt
        ComboBox1.ItemsSource = dv
        ComboBox1.SelectedValuePath = "Id"
        ComboBox1.DisplayMemberPath = "Name"
        ComboBox1.SelectedIndex = 0
    End Sub

    Private Sub ComboBox1_SelectionChanged(sender As Object, e As SelectionChangedEventArgs) Handles ComboBox1.SelectionChanged
        If Flag = 1 And ComboBox1.SelectedValue = 2 Then
            lblToId.Visibility = Visibility.Visible
            ToId.Visibility = Visibility.Visible
            ToName.Visibility = Visibility.Visible
        ElseIf Flag = 2 And (ComboBox1.SelectedValue = 5 Or ComboBox1.SelectedValue = 6) Then
            lblToId.Visibility = Visibility.Visible
            ToId.Visibility = Visibility.Visible
            ToName.Visibility = Visibility.Visible
        Else
            lblToId.Visibility = Visibility.Hidden
            ToId.Visibility = Visibility.Hidden
            ToName.Visibility = Visibility.Hidden

            ToId.Clear()
            ToName.Clear()
        End If
    End Sub


    Private Sub ToId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles ToId.KeyUp
        Dim Title, tbl As String
        If Flag = 1 Then
            tbl = "Suppliers"
            Title = "الموردين"
            bm.ShowHelp(Title, ToId, ToName, e, "select Id,Name from " & tbl)
        ElseIf Flag = 2 Then
            tbl = "Customers"
            Title = "العملاء"
            bm.ShowHelp(Title, ToId, ToName, e, "select Id,Name from " & tbl)
        End If
    End Sub

    Private Sub ToId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles ToId.LostFocus
        Dim tbl As String
        If Flag = 1 Then
            tbl = "Suppliers"
        ElseIf Flag = 2 Then
            tbl = "Customers"
        Else
            Return
        End If
        bm.LostFocus(ToId, ToName, "select Name from " & tbl & " where Id=" & ToId.Text.Trim())
    End Sub

End Class
