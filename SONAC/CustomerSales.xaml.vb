Imports System.Data

Public Class CustomerSales
    Public MainTableName As String = "Groups"
    Public MainSubId As String = "Id"
    Public MainSubName As String = "Name"

    Public TableName As String = "CustomerSales"
    Public MainId As String = "GroupId"
    Public SubId As String = "Id"


    Dim dt As New DataTable
    Dim bm As New BasicMethods

    Dim m As MainWindow = Application.Current.MainWindow
    Public Flag As Integer = 0
    Public WithImage As Boolean = False
    Public ReLoadMenue As Boolean = False

    Private Sub CustomerSales_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return


        bm.FillCombo(MainTableName, CboMain, " where Flag=1")
        Dim v() As String = {MainId, SubId, "DayDate", "CustomerId", "ValueTotal", "Notes", "Dis1", "Dis1Value", "Ded1Vlue", "Ded2Vlue", "Ded1Notes", "Ded2Notes", "Add1Vlue", "Add1Notes", "Add2Vlue", "Add2Notes", "ValueTotalNet", "Add1", "Add1Value", "ToDayDate"}
        bm.Fields = v

        Dim c() As Control = {CboMain, txtID, DayDate, CustomerId, ValueTotal, Notes, Dis1, Dis1Value, Ded1Vlue, Ded2Vlue, Ded1Notes, Ded2Notes, Add1Vlue, Add1Notes, Add2Vlue, Add2Notes, ValueTotalNet, Add1, Add1Value, ToDayDate}
        bm.control = c

        Dim k() As String = {MainId, SubId}
        bm.KeyFields = k

        bm.Table_Name = TableName

        btnNew_Click(sender, e)
    End Sub

    Sub FillControls()
        bm.FillControls()
        CboMain_SelectionChanged(Nothing, Nothing)
        LoadGrid(0)
        CustomerId_LostFocus(Nothing, Nothing)

    End Sub

    Private Sub btnLast_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnLast.Click
        bm.FirstLast(New String() {MainId, SubId}, "Max", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub

    Private Sub btnNext_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnNext.Click
        bm.NextPrevious(New String() {MainId, SubId}, New String() {CboMain.SelectedValue.ToString, txtID.Text}, "Next", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If CustomerId.Text = "" Or CboMain.SelectedValue.ToString = 0 Then
            Return
        End If

        CustomerId.Text = Val(CustomerId.Text)
        ValueTotal.Text = Val(ValueTotal.Text)

        bm.DefineValues()
        If Not bm.Save(New String() {MainId, SubId}, New String() {CboMain.SelectedValue.ToString, txtID.Text.Trim}) Then Return

        SaveGrid()
        If sender Is btnPrint OrElse sender Is btnPrint2 Then
            Dim rpt As New ReportViewer
            rpt.paraname = New String() {"@GroupID", "@InvoiceNo", "Header"}
            rpt.paravalue = New String() {CboMain.SelectedValue.ToString, txtID.Text, CType(Parent, Page).Title}
            rpt.Rpt = "Purchase.rpt"
            If sender Is btnPrint2 Then rpt.Rpt = "Purchase2.rpt"
            rpt.ShowDialog()
        Else
            btnNew_Click(sender, e)
        End If
        AllowClose = True
    End Sub

    Private Sub btnFirst_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFirst.Click
        bm.FirstLast(New String() {MainId, SubId}, "Min", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub

    Private Sub btnNew_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnNew.Click
        'bm.ClearControls()
        ClearControls()
        txtID.Focus()
        txtID.SelectAll()
    End Sub

    Sub ClearControls()
        Try
            DataGridView1.ItemsSource = Nothing
            bm.ClearControls()

            CustomerName.Clear()
            WieghtTotal.Clear()
            Price.Clear()

            bm.SetNoImage(Image1)
            txtID.Text = bm.ExecuteScalar("select max(" & SubId & ")+1 from " & TableName & " where " & MainId & "='" & CboMain.SelectedValue.ToString & "'")
            If txtID.Text = "" Then txtID.Text = "1"

            DayDate.SelectedDate = bm.MyGetDate
            ToDayDate.SelectedDate = bm.MyGetDate

        Catch
        End Try
    End Sub

    Private Sub btnDelete_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        If bm.ShowDeleteMSG() Then
            bm.ExecuteNonQuery("delete from " & TableName & " where " & SubId & "='" & txtID.Text.Trim & "' and " & MainId & " ='" & CboMain.SelectedValue.ToString & "'")
            btnNew_Click(sender, e)
        End If
    End Sub

    Private Sub btnPrevios_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnPrevios.Click
        bm.NextPrevious(New String() {MainId, SubId}, New String() {CboMain.SelectedValue.ToString, txtID.Text}, "Back", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub
    Dim lv As Boolean = False
    Private Sub txtID_Leave(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtID.LostFocus
        If lv Then
            Return
        End If
        lv = True

        bm.DefineValues()
        Dim dt As New DataTable
        bm.RetrieveAll(New String() {MainId, SubId}, New String() {CboMain.SelectedValue.ToString, txtID.Text.Trim}, dt)
        If dt.Rows.Count = 0 Then
            Dim s As String = txtID.Text
            ClearControls()
            txtID.Text = s
            lv = False
            Return
        End If
        FillControls()
        lv = False
    End Sub

    Private Sub txtID_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles txtID.KeyDown, CustomerId.KeyDown
        bm.MyKeyPress(sender, e)
    End Sub

    Private Sub txtID2_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs)
        bm.MyKeyPress(sender, e, True)
    End Sub

    Private Sub CboMain_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CboMain.SelectionChanged
        ClearControls()
    End Sub

    Dim AllowClose As Boolean = False

    Private Sub btnSetImage_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles btnSetImage.Click
        bm.SetImage(Image1)
    End Sub

    Private Sub btnSetNoImage_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles btnSetNoImage.Click
        bm.SetNoImage(Image1, False, True)
    End Sub

    Sub Calc(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs)

    End Sub

    Private Sub CboMain_SelectionChanged(sender As Object, e As SelectionChangedEventArgs) Handles CboMain.SelectionChanged
        Try
            LoadCustomers(TreeView2, "select Id,Name from Items where GroupId='" & CboMain.SelectedValue.ToString & "' order by Id")
        Catch ex As Exception
        End Try

    End Sub

    Private Sub LoadCustomers(tr As TreeView, statement As String)
        tr.Items.Clear()
        Dim dt As DataTable = bm.ExcuteAdapter(statement)
        For i As Integer = 0 To dt.Rows.Count - 1
            Try
                Dim nn As New TreeViewItem
                nn.Foreground = Brushes.DarkRed
                nn.FontSize = 16
                nn.FontFamily = btnSave.FontFamily
                nn.Name = "Node_" & dt.Rows(i)("Id")
                nn.Tag = dt.Rows(i)("Id")
                nn.Header = New CheckBox With {.Content = dt.Rows(i)("Id") & "          " & dt.Rows(i)("Name")}
                tr.Items.Add(nn)

            Catch
            End Try
        Next

    End Sub

    Private Sub CustomerId_KeyUp(sender As Object, e As KeyEventArgs) Handles CustomerId.KeyUp
        If bm.ShowHelp("العملاء", CustomerId, CustomerName, e, "select Id,Name from Customers") Then
            CustomerId_LostFocus(Nothing, Nothing)
        End If
    End Sub

    Private Sub CustomerId_LostFocus(sender As Object, e As RoutedEventArgs) Handles CustomerId.LostFocus
        If Val(CustomerId.Text.Trim) = 0 Then
            CustomerId.Clear()
            CustomerName.Clear()
            Return
        End If
        bm.LostFocus(CustomerId, CustomerName, "select Name from Customers where Id=" & CustomerId.Text.Trim())
    End Sub

    Private Sub btnSelectAll2_Click(sender As Object, e As RoutedEventArgs) Handles btnSelectAll2.Click
        selection(TreeView2, True)
    End Sub

    Private Sub btnNotSelectAll2_Click(sender As Object, e As RoutedEventArgs) Handles btnNotSelectAll2.Click
        selection(TreeView2, False)
    End Sub

    Private Sub selection(tr As TreeView, p2 As Boolean)
        For i As Integer = 0 To tr.Items.Count - 1
            CType(tr.Items(i).Header, CheckBox).IsChecked = p2
        Next
    End Sub

    Private Sub btnSelectAll1_Copy_Click(sender As Object, e As RoutedEventArgs) Handles btnSelectAll1_Copy.Click
        For i As Integer = 0 To CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 1
            CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(0) = True
        Next
        Calc()
    End Sub

    Private Sub btnNotSelectAll1_Copy_Click(sender As Object, e As RoutedEventArgs) Handles btnNotSelectAll1_Copy.Click
        For i As Integer = 0 To CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 1
            CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(0) = False
        Next
        Calc()
    End Sub

    Private Sub btnSelectAll1_Copy1_Click(sender As Object, e As RoutedEventArgs) Handles btnSelectAll1_Copy1.Click
        LoadGrid(1)
    End Sub

    Dim lop As Boolean = False
    Private Sub Calc() Handles DataGridView1.SelectionChanged, DataGridView1.CellEditEnding, DataGridView1.LostFocus, DataGridView1.CurrentCellChanged, DataGridView1.SelectedCellsChanged, Add1.Checked, Add1.Unchecked, Dis1.Checked, Dis1.Unchecked, Ded1Vlue.LostFocus, Ded2Vlue.LostFocus, Add1Vlue.LostFocus, Add2Vlue.LostFocus, Add1Value.LostFocus
        If lop Then Return
        lop = True
        Dim x As Decimal = 0, y As Decimal = 0
        Try
            For i As Integer = 0 To CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 1
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(8) = Math.Round(CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(6) * CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(7), 2)
                If CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(0) Then
                    x += CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)("إجمالى القيمة")
                    y += CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)("الوزن الصافى")
                End If
            Next
            ValueTotal.Text = Math.Round(x, 2)
            WieghtTotal.Text = Math.Round(y, 3)
        Catch
        End Try

        Dis1Value.Text = 0
        Add1Value.Text = 0

        If Dis1.IsChecked Then Dis1Value.Text = Math.Round(Val(ValueTotal.Text) * 0.005, 2)
        If Add1.IsChecked Then Add1Value.Text = Math.Round(Val(ValueTotal.Text) * 0.005, 2)
        Dis1Value.Text = Val(Dis1Value.Text)
        Ded1Vlue.Text = Val(Ded1Vlue.Text)
        Ded2Vlue.Text = Val(Ded2Vlue.Text)
        Add1Vlue.Text = Val(Add1Vlue.Text)
        Add2Vlue.Text = Val(Add2Vlue.Text)
        Add1Value.Text = Val(Add1Value.Text)

        ValueTotalNet.Text = Val(ValueTotal.Text) - Val(Dis1Value.Text) - Val(Ded1Vlue.Text) - Val(Ded2Vlue.Text) + Val(Add1Vlue.Text) + Val(Add2Vlue.Text) + Val(Add1Value.Text)

        lop = False
    End Sub

    Private Sub LoadGrid(All As Integer)
        Try
            Dim d2 As New DataTable("d2")
            d2.Columns.Add("c2")
            For i As Integer = 0 To TreeView2.Items.Count - 1
                If CType(TreeView2.Items(i).Header, CheckBox).IsChecked Then
                    d2.Rows.Add({TreeView2.Items(i).Tag})
                End If
            Next

            dt = bm.ExcuteAdapter("GetNewCustomerSales", {"GroupID", "InvoiceNo", "CustomerId", "ItemId", "DayDate", "All"}, {CboMain.SelectedValue, txtID.Text, CustomerId.Text, d2, bm.ToStrDate(ToDayDate.SelectedDate), All}, {SqlDbType.Int, SqlDbType.Int, SqlDbType.Int, SqlDbType.Structured, SqlDbType.VarChar, SqlDbType.Int})
            dt.TableName = "tbl"

            Dim dv As New DataView
            dv.Table = dt
            DataGridView1.ItemsSource = dv

            For index = 1 To DataGridView1.Columns.Count - 1
                DataGridView1.Columns(index).IsReadOnly = True
            Next

            DataGridView1.SelectedIndex = 0
        Catch
        End Try
        Calc()

    End Sub

    Private Sub SaveGrid()
        Try
            Dim d2 As New DataTable("d2")
            d2.Columns.Add("c2")
            For i As Integer = 0 To CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 1
                If CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(0) Then
                    d2.Rows.Add({Val(CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(1))})

                    bm.ExcuteNonQuery("UpdateCustomerSalesInvoicesPrice", {"GroupID", "InvoiceNo", "Price", "Value"}, {CboMain.SelectedValue, CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(1), CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(7), CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(8)})

                End If
            Next


            bm.ExcuteNonQuery("UpdateCustomerSalesInvoices", {"GroupID", "InvoiceNo", "OutcomeInvoices"}, {Val(CboMain.SelectedValue), Val(txtID.Text), d2}, {SqlDbType.VarChar, SqlDbType.VarChar, SqlDbType.Structured})
        Catch
        End Try

    End Sub

    Private Sub btnPrint_Click(sender As Object, e As RoutedEventArgs) Handles btnPrint.Click
        btnSave_Click(sender, e)
    End Sub

    Private Sub btnPrint2_Click(sender As Object, e As RoutedEventArgs) Handles btnPrint2.Click
        btnSave_Click(sender, e)
    End Sub


    Private Sub btnChangePrice_Click(sender As Object, e As RoutedEventArgs) Handles btnChangePrice.Click
        For i As Integer = 0 To CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 1
            Try
                If CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(1) Is DBNull.Value Then Continue For
                If CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(0) Then
                    CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(7) = Val(Price.Text)
                    Calc()
                End If
            Catch
            End Try
        Next

    End Sub

End Class
