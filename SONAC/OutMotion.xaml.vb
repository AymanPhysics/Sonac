Imports System.Data

Public Class OutMotion
    Public MainTableName As String = "Groups"
    Public MainSubId As String = "Id"
    Public MainSubName As String = "Name"

    Public TableName As String = "OutMotion"
    Public MainId As String = "GroupId"
    Public SubId As String = "Id"


    Dim dt As New DataTable
    Dim bm As New BasicMethods

    Dim m As MainWindow = Application.Current.MainWindow
    Public Flag As Integer = 0
    Public WithImage As Boolean = False
    Public ReLoadMenue As Boolean = False

    Private Sub BasicForm2_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return

        bm.FillCombo("SerialTypes", State, "")

        bm.FillCombo(MainTableName, CboMain, " where Flag=1")
        Dim v() As String = {MainId, SubId, "DayDate", "CustomerId", "DriverId", "ItemId", "CarNo", "TrillaNo", "Qty", "Wieght1", "Wieght2", "WieghtNet", "Price", "Value", "Notes", "SerialNo", "State", "SerialDate", "CustomerSalesInvoiceNo", "IsPosted"}
        bm.Fields = v

        Dim c() As Control = {CboMain, txtID, DayDate, CustomerId, DriverId, ItemId, CarNo, TrillaNo, Qty, Wieght1, Wieght2, WieghtNet, Price, Value, Notes, SerialNo, State, SerialDate, CustomerSalesInvoiceNo, IsPosted}
        bm.control = c

        Dim k() As String = {MainId, SubId}
        bm.KeyFields = k

        CustomerId.Tag = "NotExit"
        ItemId.Tag = "NotExit"

        bm.Table_Name = TableName
        btnNew_Click(sender, e)
        DayDate.SelectedDate = bm.MyGetDate
        SerialDate.SelectedDate = bm.MyGetDate
    End Sub

    Sub FillControls()
        bm.FillControls()

        CustomerId_LostFocus(Nothing, Nothing)
        DriverId_LostFocus(Nothing, Nothing)
        ItemId_LostFocus(Nothing, Nothing)

        If WithImage Then bm.GetImage(TableName, New String() {MainId, SubId}, New String() {CboMain.SelectedValue.ToString, txtID.Text.Trim}, "Image", Image1)

        If Not bm.ShowDeleteMSG("هل تريد تعديل الملف؟") Then
            btnNew_Click(Nothing, Nothing)
            Return
        End If

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
        If CustomerId.Text = "" Or ItemId.Text = "" Or CboMain.SelectedValue.ToString = 0 Then
            Return
        End If


        CustomerId.Text = Val(CustomerId.Text)
        DriverId.Text = Val(DriverId.Text)
        ItemId.Text = Val(ItemId.Text)
        Qty.Text = Val(Qty.Text)
        Wieght1.Text = Val(Wieght1.Text)
        Wieght2.Text = Val(Wieght2.Text)
        WieghtNet.Text = Val(WieghtNet.Text)
        Price.Text = Val(Price.Text)
        Value.Text = Val(Value.Text)
        CustomerSalesInvoiceNo.Text = Val(CustomerSalesInvoiceNo.Text)

        bm.DefineValues()
        If Not bm.Save(New String() {MainId, SubId}, New String() {CboMain.SelectedValue.ToString, txtID.Text.Trim}) Then Return

        If Val(Value.Text) > 0 AndAlso Val(SerialNo.Text) = 0 Then
            Dim s As String = bm.ExecuteScalar("UpdateOutMotionSerialNo", {"GroupID", "Id"}, {CboMain.SelectedValue.ToString, txtID.Text})
            bm.ShowMSG("سيريال رقم " & s)
        End If


        Dim ss As String = txtID.Text
        btnNew_Click(sender, e)
        txtID.Text = Val(ss) + 1
        txtID.SelectAll()
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

            Dim d1 = DayDate.SelectedDate
            Dim d2 = SerialDate.SelectedDate
            bm.ClearControls()
            DayDate.SelectedDate = d1
            SerialDate.SelectedDate = d2

            State.SelectedValue = 2
            CustomerName.Clear()
            DriverName.Clear()
            ItemName.Clear()

            bm.SetNoImage(Image1)
            txtID.Text = bm.ExecuteScalar("select max(" & SubId & ")+1 from " & TableName & " where " & MainId & "='" & CboMain.SelectedValue.ToString & "'")
            If txtID.Text = "" Then txtID.Text = "1"


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

    Private Sub txtID_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles txtID.KeyDown, CustomerId.KeyDown, DriverId.KeyDown, ItemId.KeyDown
        bm.MyKeyPress(sender, e)
    End Sub

    Private Sub txtID2_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles Qty.KeyDown, Wieght1.KeyDown, Wieght2.KeyDown, Price.KeyDown
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

    Sub Calc(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles CustomerId.LostFocus, ItemId.LostFocus, Qty.LostFocus, Wieght1.LostFocus, Wieght2.LostFocus, Price.LostFocus
        If sender Is CustomerId OrElse sender Is ItemId Then
            Dim dt As DataTable = bm.ExcuteAdapter("GetCustomerItemPrice", {"CustomerId", "ItemId"}, {Val(CustomerId.Text), Val(ItemId.Text)})
            If dt.Rows.Count > 0 Then
                Price.Text = dt.Rows(0)("Price")
            End If
        End If

        WieghtNet.Text = Val(Wieght1.Text) - Val(Wieght2.Text)

        Value.Text = Val(WieghtNet.Text) * Val(Price.Text)

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

    Private Sub DriverId_KeyUp(sender As Object, e As KeyEventArgs) Handles DriverId.KeyUp
        If bm.ShowHelp("السائقين", DriverId, DriverName, e, "select Id,Name from Drivers") Then
            DriverId_LostFocus(Nothing, Nothing)
        End If
    End Sub

    Private Sub DriverId_LostFocus(sender As Object, e As RoutedEventArgs) Handles DriverId.LostFocus
        If Val(DriverId.Text.Trim) = 0 Then
            DriverId.Clear()
            DriverName.Clear()
            Return
        End If
        bm.LostFocus(DriverId, DriverName, "select Name from Drivers where Id=" & DriverId.Text.Trim())
    End Sub

    Private Sub ItemId_KeyUp(sender As Object, e As KeyEventArgs) Handles ItemId.KeyUp
        Try
            If bm.ShowHelp("الأصناف", ItemId, ItemName, e, "select Id,Name from Items where GroupId='" & CboMain.SelectedValue.ToString & "'") Then
                ItemId_LostFocus(Nothing, Nothing)
            End If
        Catch
        End Try
    End Sub

    Private Sub ItemId_LostFocus(sender As Object, e As RoutedEventArgs) Handles ItemId.LostFocus
        If Val(ItemId.Text.Trim) = 0 Then
            ItemId.Clear()
            ItemName.Clear()
            Return
        End If
        Try
            bm.LostFocus(ItemId, ItemName, "select Name from Items where Id=" & ItemId.Text.Trim() & " and GroupId='" & CboMain.SelectedValue.ToString & "'")
        Catch
        End Try
    End Sub

    Private Sub IsPosted_Checked(sender As Object, e As RoutedEventArgs) Handles IsPosted.Checked, IsPosted.Unchecked
        btnSave.IsEnabled = Not IsPosted.IsChecked
        btnDelete.IsEnabled = Not IsPosted.IsChecked
    End Sub
End Class
