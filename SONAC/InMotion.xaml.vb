Imports System.Data

Public Class InMotion
    Public MainTableName As String = "Groups"
    Public MainSubId As String = "Id"
    Public MainSubName As String = "Name"

    Public TableName As String = "InMotion"
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


        bm.FillCombo(MainTableName, CboMain, " where Flag=1")
        Dim v() As String = {MainId, SubId, "DayDate", "SupplierId", "DriverId", "ItemId", "CarNo", "TrillaNo", "Qty", "Exchange", "WieghtNetFinal", "Wieght1", "Wieght2", "WieghtNet", "QtyDed", "QtyDedPerc", "QtyPerc", "WieghtNet2", "QtyQre", "PriceOre", "ValueOre", "QtyFarza", "PriceFarza", "ValueFarza", "ValueTotal", "Notes", "PuchaseIsPosted", "PuchaseInvoiceNo", "QtyPercValue"}
        bm.Fields = v

        Dim c() As Control = {CboMain, txtID, DayDate, SupplierId, DriverId, ItemId, CarNo, TrillaNo, Qty, Exchange, WieghtNetFinal, Wieght1, Wieght2, WieghtNet, QtyDed, QtyDedPerc, QtyPerc, WieghtNet2, QtyQre, PriceOre, ValueOre, QtyFarza, PriceFarza, ValueFarza, ValueTotal, Notes, PuchaseIsPosted, PuchaseInvoiceNo, QtyPercValue}
        bm.control = c

        Dim k() As String = {MainId, SubId}
        bm.KeyFields = k

        SupplierId.Tag = "NotExit"
        ItemId.Tag = "NotExit"

        bm.Table_Name = TableName
        btnNew_Click(sender, e)
        DayDate.SelectedDate = bm.MyGetDate
    End Sub

    Sub FillControls()
        bm.FillControls()

        SupplierId_LostFocus(Nothing, Nothing)
        DriverId_LostFocus(Nothing, Nothing)
        ItemId_LostFocus(Nothing, Nothing)

        If WithImage Then bm.GetImage(TableName, New String() {MainId, SubId}, New String() {CboMain.SelectedValue.ToString, txtID.Text.Trim}, "Image", Image1)
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
        If SupplierId.Text = "" Or ItemId.Text = "" Or CboMain.SelectedValue.ToString = 0 Then
            Return
        End If


        SupplierId.Text = Val(SupplierId.Text)
        DriverId.Text = Val(DriverId.Text)
        ItemId.Text = Val(ItemId.Text)
        Qty.Text = Val(Qty.Text)
        Exchange.Text = Val(Exchange.Text)
        WieghtNetFinal.Text = Val(WieghtNetFinal.Text)
        Wieght1.Text = Val(Wieght1.Text)
        Wieght2.Text = Val(Wieght2.Text)
        WieghtNet.Text = Val(WieghtNet.Text)
        QtyDed.Text = Val(QtyDed.Text)
        QtyDedPerc.Text = Val(QtyDedPerc.Text)
        QtyPerc.Text = Val(QtyPerc.Text)
        QtyPercValue.Text = Val(QtyPercValue.Text)
        WieghtNet2.Text = Val(WieghtNet2.Text)
        QtyQre.Text = Val(QtyQre.Text)
        PriceOre.Text = Val(PriceOre.Text)
        ValueOre.Text = Val(ValueOre.Text)
        QtyFarza.Text = Val(QtyFarza.Text)
        PriceFarza.Text = Val(PriceFarza.Text)
        ValueFarza.Text = Val(ValueFarza.Text)
        ValueTotal.Text = Val(ValueTotal.Text)


        bm.DefineValues()
        If Not bm.Save(New String() {MainId, SubId}, New String() {CboMain.SelectedValue.ToString, txtID.Text.Trim}) Then Return

        Dim s As String = txtID.Text
        btnNew_Click(sender, e)
        txtID.Text = Val(s) + 1
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
            bm.ClearControls()
            DayDate.SelectedDate = d1


            SupplierName.Clear()
            DriverName.Clear()
            ItemName.Clear()
            QtyPercValue.Clear()
            EditExchange.IsChecked = False
            SelectExchange()
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

        If Not bm.ShowDeleteMSG("هل تريد تعديل الملف؟") Then
            btnNew_Click(sender, e)
            lv = False
            Return
        End If

        lv = False
    End Sub

    Private Sub txtID_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles txtID.KeyDown, SupplierId.KeyDown, DriverId.KeyDown, ItemId.KeyDown
        bm.MyKeyPress(sender, e)
    End Sub

    Private Sub txtID2_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles Qty.KeyDown, Wieght1.KeyDown, Wieght2.KeyDown, QtyDed.KeyDown, QtyDedPerc.KeyDown, QtyPerc.KeyDown, QtyQre.KeyDown, PriceOre.KeyDown, PriceFarza.KeyDown
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

    Sub Calc(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles Qty.LostFocus, Wieght1.LostFocus, Wieght2.LostFocus, QtyDed.LostFocus, QtyDedPerc.LostFocus, QtyPerc.LostFocus, QtyQre.LostFocus, PriceOre.LostFocus, PriceFarza.LostFocus, Exchange.LostFocus

        If sender Is SupplierId OrElse sender Is ItemId Then
            Dim dt As DataTable = bm.ExcuteAdapter("GetSupplierItemPrice", {"SupplierId", "ItemId"}, {Val(SupplierId.Text), Val(ItemId.Text)})
            If dt.Rows.Count > 0 Then
                PriceOre.Text = dt.Rows(0)("PurchasePrice")
                PriceFarza.Text = dt.Rows(0)("Farza")
            End If
        End If

        If Val(Wieght2.Text) > Val(Wieght1.Text) Then
            Wieght2.Text = ""
        End If
        WieghtNet.Text = Math.Round(Val(Wieght1.Text) - Val(Wieght2.Text), 3, MidpointRounding.AwayFromZero)
        If Val(Exchange.Text) = 0 Then Exchange.Text = 1
        Dim x As String = Math.Round(Val(WieghtNet.Text) / Val(Exchange.Text), 5, MidpointRounding.AwayFromZero)
        Try
            If Not x.ToString.Contains(".") Then
                x = x.ToString & ".00000"
            End If
            While x.Split(".")(1).Length < 5
                x = x & "0"
            End While
            x = x.ToString.Substring(0, x.ToString.Length - 2)
        Catch
        End Try

        WieghtNet2.Text = x

        If Val(QtyDed.Text) / 1000 > Val(WieghtNet2.Text) Then
            QtyDed.Text = ""
        End If
        Dim d As Decimal = Val(WieghtNet2.Text) - Val(QtyDed.Text) / 1000
        d = d - (Val(Qty.Text) * Val(QtyDedPerc.Text) / 1000)
        QtyPercValue.Text = d * Val(QtyPerc.Text) / 100
        d = d - Val(QtyPercValue.Text)
        WieghtNetFinal.Text = Math.Round(d, 3, MidpointRounding.AwayFromZero)
        QtyPercValueEnd.Text = Math.Round(Val(WieghtNet2.Text) - Val(WieghtNetFinal.Text), 3, MidpointRounding.AwayFromZero)

        If Val(QtyQre.Text) > Val(WieghtNetFinal.Text) Then
            QtyQre.Text = ""
        End If

        If Val(QtyFarza.Text) > Val(WieghtNetFinal.Text) Then
            QtyFarza.Text = ""
        End If

        If sender Is QtyQre Then
            QtyFarza.Text = Math.Round(Val(WieghtNetFinal.Text) - Val(QtyQre.Text), 3, MidpointRounding.AwayFromZero)
        Else
            QtyQre.Text = Math.Round(Val(WieghtNetFinal.Text) - Val(QtyFarza.Text), 3, MidpointRounding.AwayFromZero)
        End If

        ValueOre.Text = Math.Round(Val(QtyQre.Text) * Val(PriceOre.Text), 2, MidpointRounding.AwayFromZero)
        ValueFarza.Text = Math.Round(Val(QtyFarza.Text) * Val(PriceFarza.Text), 2, MidpointRounding.AwayFromZero)
        ValueTotal.Text = Math.Round(Val(ValueOre.Text) + Val(ValueFarza.Text), 2, MidpointRounding.AwayFromZero)

    End Sub


    Sub SelectExchange()
        Try
            Dim dt As DataTable = bm.ExcuteAdapter("select Exchange,HazFarza from groups where Id='" & CboMain.SelectedValue.ToString & "'")
            If dt.Rows.Count = 0 Then Return
            If Not EditExchange.IsChecked Then Exchange.Text = dt.Rows(0)("Exchange")
            If dt.Rows(0)("HazFarza") = 1 Then
                QtyQre.IsEnabled = True
            Else
                QtyQre.IsEnabled = False
            End If
            Calc(Nothing, Nothing)
        Catch
        End Try
    End Sub

    Private Sub SupplierId_KeyUp(sender As Object, e As KeyEventArgs) Handles SupplierId.KeyUp
        If bm.ShowHelp("الموردين", SupplierId, SupplierName, e, "select Id,Name from Suppliers") Then
            SupplierId_LostFocus(Nothing, Nothing)
        End If
    End Sub


    Dim ExitLop As Boolean = False
    Private Sub SupplierId_LostFocus(sender As Object, e As RoutedEventArgs) Handles SupplierId.LostFocus
        If Val(SupplierId.Text.Trim) = 0 Then
            SupplierId.Clear()
            SupplierName.Clear()
            Return
        End If
        bm.LostFocus(SupplierId, SupplierName, "select Name from Suppliers where Id=" & SupplierId.Text.Trim())
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
        If ExitLop Then Return
        If Val(ItemId.Text.Trim) = 0 Then
            ItemId.Clear()
            ItemName.Clear()
            Return
        End If
        Try
            bm.LostFocus(ItemId, ItemName, "select Name from Items where Id=" & ItemId.Text.Trim() & " and GroupId='" & CboMain.SelectedValue.ToString & "'")
        Catch
        End Try
        Calc(sender, e)
    End Sub

    Private Sub PuchaseIsPosted_Checked(sender As Object, e As RoutedEventArgs) Handles PuchaseIsPosted.Checked, PuchaseIsPosted.Unchecked
        btnSave.IsEnabled = Not PuchaseIsPosted.IsChecked
        btnDelete.IsEnabled = Not PuchaseIsPosted.IsChecked
    End Sub

    Private Sub EditExchange_Checked(sender As Object, e As RoutedEventArgs) Handles EditExchange.Checked, EditExchange.Unchecked
        Exchange.IsEnabled = EditExchange.IsChecked
        SelectExchange()
    End Sub

End Class
