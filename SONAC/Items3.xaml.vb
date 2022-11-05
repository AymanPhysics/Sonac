Imports System.Data

Public Class Items3
    Public TableName As String = ""
    Public SubId As String = "Id"
    Public SubName As String = "Name"

    Public GroupsTableName As String = ""
    Public TypesTableName As String = ""

    Dim dt As New DataTable
    Dim bm As New BasicMethods

    Public Flag As Integer = 0

    Private Sub BasicForm_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return

        bm.FillCombo("select Id,Name From " & GroupsTableName & " union select 0 Id,'-' Name", CboMain)

        bm.Fields = New String() {SubId, SubName, "GroupId", "TypeId", "Unit", "Price"}
        bm.control = New Control() {txtID, txtName, GroupId, TypeId, Unit, Price}
        bm.KeyFields = New String() {SubId}
        bm.Table_Name = TableName
        btnNew_Click(sender, e)
    End Sub

    Private Sub btnLast_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnLast.Click
        If CboMain.SelectedValue = 0 Then
            bm.AppendWhere = ""
        Else
            bm.AppendWhere = " and GroupId = " & CboMain.SelectedValue
        End If
        bm.FirstLast(New String() {SubId}, "Max", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub

    Sub FillControls()
        bm.FillControls()
        bm.GetImage(TableName, New String() {SubId}, New String() {txtID.Text.Trim}, "Image", Image1)
        GroupId_LostFocus(Nothing, Nothing)
    End Sub
    Private Sub btnNext_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnNext.Click
        If CboMain.SelectedValue = 0 Then
            bm.AppendWhere = ""
        Else
            bm.AppendWhere = " and GroupId = " & CboMain.SelectedValue
        End If
        bm.NextPrevious(New String() {SubId}, New String() {txtID.Text}, "Next", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If txtName.Text.Trim = "" Then
            txtName.Focus()
            Return
        End If

        Price.Text = Val(Price.Text)

        bm.DefineValues()
        If Not bm.Save(New String() {SubId}, New String() {txtID.Text.Trim}) Then Return
        bm.SaveImage(TableName, New String() {SubId}, New String() {txtID.Text.Trim}, "Image", Image1)
        btnNew_Click(sender, e)
        AllowClose = True
    End Sub

    Private Sub btnFirst_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFirst.Click
        If CboMain.SelectedValue = 0 Then
            bm.AppendWhere = ""
        Else
            bm.AppendWhere = " and GroupId = " & CboMain.SelectedValue
        End If
        bm.FirstLast(New String() {SubId}, "Min", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub

    Private Sub btnNew_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnNew.Click
        ClearControls()
        txtID.Focus()
        txtID.SelectAll()
        txtID_LostFocus(Nothing, Nothing)
    End Sub

    Sub ClearControls()
        bm.ClearControls()
        bm.SetNoImage(Image1)

        GroupName.Clear()
        TypeName.Clear()


        txtName.Clear()
        If CboMain.SelectedValue = 0 Then
            txtID.Text = bm.ExecuteScalar("select max(" & SubId & ")+1 from " & TableName)
        Else
            txtID.Text = bm.ExecuteScalar("select max(" & SubId & ")+1 from " & TableName & " Where GroupId = " & CboMain.SelectedValue)
        End If
        If txtID.Text = "" Then txtID.Text = "1"

    End Sub

    Private Sub btnDelete_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        If bm.ShowDeleteMSG() Then
            bm.ExecuteNonQuery("delete from " & TableName & " where " & SubId & "='" & txtID.Text.Trim & "'")
            btnNew_Click(sender, e)
        End If
    End Sub

    Private Sub btnPrevios_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnPrevios.Click
        If CboMain.SelectedValue = 0 Then
            bm.AppendWhere = ""
        Else
            bm.AppendWhere = " and GroupId = " & CboMain.SelectedValue
        End If
        bm.NextPrevious(New String() {SubId}, New String() {txtID.Text}, "Back", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub
    Dim lv As Boolean = False

    Private Sub txtID_LostFocus(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtID.LostFocus
        If lv Then
            Return
        End If
        lv = True
        bm.AppendWhere = ""
        bm.DefineValues()
        Dim dt As New DataTable
        bm.RetrieveAll(New String() {SubId}, New String() {txtID.Text.Trim}, dt)
        If dt.Rows.Count = 0 Then
            Dim s As String = txtID.Text
            ClearControls()
            txtID.Text = s

            txtName.Focus()
            lv = False
            Return
        End If
        FillControls()
        lv = False
        txtName.SelectAll()
        txtName.Focus()
        txtName.SelectAll()
        txtName.Focus()
        'txtName.Text = dt(0)("Name")
    End Sub

    Private Sub txtID_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles txtID.KeyDown, GroupId.KeyDown, TypeId.KeyDown, PrintingGroupId.KeyDown
        bm.MyKeyPress(sender, e)
    End Sub

    Private Sub txtID_KeyUp(sender As Object, e As KeyEventArgs) Handles txtID.KeyUp
        Try
            If bm.ShowHelp("Items", txtID, txtName, e, "select Id,Name from " & TableName) Then
                txtName.Focus()
            End If
        Catch ex As Exception
        End Try
    End Sub

    Private Sub txtID_KeyPress2(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles Price.KeyDown
        bm.MyKeyPress(sender, e, True)
    End Sub


    Dim AllowClose As Boolean = False

    Private Sub GroupId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles GroupId.LostFocus
        Try
            bm.LostFocus(GroupId, GroupName, "select Name from " & GroupsTableName & " where Id=" & GroupId.Text.Trim())
            'If GroupId.Text <> CboMain.SelectedValue And CboMain.SelectedValue <> 0 Then
            '    CboMain.SelectedValue = GroupId.Text
            'End If
            TypeId_LostFocus(Nothing, Nothing)
        Catch ex As Exception
        End Try
    End Sub

    Private Sub GroupId_KeyDown(ByVal sender As System.Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles GroupId.KeyUp
        If bm.ShowHelp("المجموعات", GroupId, GroupName, e, "select Id,Name from " & GroupsTableName, GroupsTableName) Then
            GroupId_LostFocus(sender, Nothing)
        End If
    End Sub

    Private Sub btnSetImage_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles btnSetImage.Click
        bm.SetImage(Image1)
    End Sub

    Private Sub btnSetNoImage_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles btnSetNoImage.Click
        bm.SetNoImage(Image1, False, True)
    End Sub

    Private Sub TypeId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles TypeId.KeyUp
        bm.ShowHelp("Types", TypeId, TypeName, e, "select Id,Name from " & TypesTableName & " where GroupId=" & GroupId.Text.Trim, TypesTableName, {"GroupId"}, {GroupId.Text})
    End Sub

    Private Sub TypeId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles TypeId.LostFocus
        bm.LostFocus(TypeId, TypeName, "select Name from " & TypesTableName & " where GroupId=" & GroupId.Text.Trim & " and Id=" & TypeId.Text.Trim())
    End Sub

    Private Sub CboMain_LostFocus(sender As Object, e As RoutedEventArgs) Handles CboMain.SelectionChanged
        Try
            btnNew_Click(Nothing, Nothing)
            txtID.Focus()
            txtID.SelectAll()
        Catch ex As Exception
        End Try
    End Sub


End Class
