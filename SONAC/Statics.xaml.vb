Imports System.Data

Public Class Statics
    Public TableName As String = "Statics" 



    Dim dt As New DataTable
    Dim bm As New BasicMethods

    Dim m As MainWindow = Application.Current.MainWindow

    Public Sub BasicForm_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return

        dt = bm.ExcuteAdapter("select Ded1Prec,Add1Prec,CommitionValue,CommitionDed,DedCarryValue from Statics")
        If dt.Rows.Count > 0 Then
            Ded1Prec.Text = dt.Rows(0)("Ded1Prec")
            Add1Prec.Text = dt.Rows(0)("Add1Prec")
            CommitionValue.Text = dt.Rows(0)("CommitionValue")
            CommitionDed.Text = dt.Rows(0)("CommitionDed")
            DedCarryValue.Text = dt.Rows(0)("DedCarryValue")
        End If

    End Sub


    Private Sub btnSave_Click(sender As Object, e As RoutedEventArgs) Handles btnSave.Click
        If bm.ExecuteNonQuery("update Statics set Ded1Prec='" & Val(Ded1Prec.Text) & "',Add1Prec='" & Val(Add1Prec.Text) & "',CommitionValue='" & Val(CommitionValue.Text) & "',CommitionDed='" & Val(CommitionDed.Text) & "',DedCarryValue='" & Val(DedCarryValue.Text) & "'") Then
            Try
                DirectCast(Parent, Window).Close()
            Catch ex As Exception
            End Try
        End If
    End Sub
End Class
