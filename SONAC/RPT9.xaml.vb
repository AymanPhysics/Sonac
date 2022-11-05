﻿Imports System.Data
Imports Microsoft.Office.Interop
Imports System.IO

Public Class RPT9
    Dim bm As New BasicMethods
    Dim dt As New DataTable

    Public Flag As Integer = 0
    Public Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles Button2.Click
        If Val(txtMonth.Text) = 0 OrElse Val(txtYear.Text) = 0 Then Return

        Dim rpt As New ReportViewer
        Select Case Flag
            Case 1
                rpt.Rpt = "SalaryHistory.rpt"
            Case 2
                rpt.Rpt = "SalaryHistory2.rpt"
        End Select

        rpt.paraname = New String() {"@EmpId", "@Month", "@Year", "Header"}
        rpt.paravalue = New String() {Val(EmpId.Text), txtMonth.Text, txtYear.Text, CType(Parent, Page).Title}
        rpt.ShowDialog()

    End Sub

    Private Sub UserControl_Loaded(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles MyBase.Loaded
        If bm.TestIsLoaded(Me) Then Return

        Dim MyNow As DateTime = bm.MyGetDate()
        txtMonth.Text = MyNow.Month
        txtYear.Text = MyNow.Year
    End Sub

    Private Sub txtID_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles txtMonth.KeyDown, txtYear.KeyDown, EmpId.KeyDown
        bm.MyKeyPress(sender, e)
    End Sub

    Private Sub EmpId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles EmpId.KeyUp
        If bm.ShowHelp("Employees", EmpId, EmpName, e, "Select cast(Id as varchar(10))Id," & "ArName" & " Name from Employees") Then
            EmpId_LostFocus(sender, Nothing)
        End If
    End Sub

    Private Sub EmpId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles EmpId.LostFocus
        If Val(EmpId.Text.Trim) = 0 Then
            EmpId.Clear()
            EmpName.Clear()
            Return
        End If
        bm.LostFocus(EmpId, EmpName, "select " & "ArName" & " Name from Employees where Id=" & EmpId.Text.Trim())
    End Sub



End Class