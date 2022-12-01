Imports System.Data
Imports System.Windows.Controls.Primitives

Public Class Login

    Dim bm As New BasicMethods
    Public LogedIn As Boolean = False
    Public Flag As Integer = 1
    Dim dt As DataTable
    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles btnLogin.Click

        If Username.Text.Trim = "" Or Username.Text.Trim = "-" Or Username.SelectedIndex < 0 Then
            Username.Focus()
            Return
        End If

        If Password.Password.Trim = "" Then
            Password.Focus()
            Return
        End If

        Dim dt As DataTable

        If Not bm.StopPro() Then Return
        Dim paraname() As String = {"Id", "Password"}
        Dim paravalue() As String = {Username.SelectedValue.ToString, bm.Encrypt(Password.Password)}
        dt = bm.ExcuteAdapter("TestLogin", paraname, paravalue)
        If dt.Rows.Count = 0 Then
            bm.ShowMSG("Invalid Password ...")
            Password.Focus()
            Password.SelectAll()
            Exit Sub
        End If
        Md.UserName = Username.SelectedValue.ToString
        Md.ArName = dt.Rows(0)("ArName").ToString
        Md.EnName = dt.Rows(0)("EnName").ToString
        Md.LevelId = dt.Rows(0)("LevelId").ToString
        Md.Password = bm.Decrypt(dt.Rows(0)("Password").ToString)
        Md.CompanyName = dt.Rows(0)("CompanyName").ToString
        Md.CompanyTel = dt.Rows(0)("CompanyTel").ToString
        Md.Manager = dt.Rows(0)("Manager").ToString()
        

        Dim m As MainWindow = Application.Current.MainWindow
        m.LoadTabs(New MainPage)
        LogedIn = True
    End Sub

    Private Sub Login_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return


        Dim dt As New DataTable("ddtt")
        dt.Columns.Add("Id")
        dt.Columns.Add("Name")
        'For Each file In IO.Directory.GetFiles(System.Windows.Forms.Application.StartupPath)
        '    If file.ToLower.EndsWith(".udl") AndAlso Not file.ToLower.EndsWith("connect.udl") Then
        '        dt.Rows.Add(file.Split("\").Last.Replace(".udl", ""), file.Split("\").Last.Replace(".udl", ""))
        '    End If
        'Next
        For Each file In IO.Directory.GetFiles(System.Windows.Forms.Application.StartupPath)
            If file.ToLower.EndsWith(".udldll") Then
                dt.Rows.Add(file.ToLower.Split("\").Last.Replace(".udldll", ""), file.ToLower.Split("\").Last.Replace(".udldll", ""))
            End If
        Next
        Lop = True
        bm.FillCombo(dt, AccYear)
        Lop = False
        If dt.Rows.Count = 0 Then
            lblAccYear.Visibility = Visibility.Hidden
            AccYear.Visibility = Visibility.Hidden
            LoadEmployees()
            Username.Focus()
        Else
            AccYear.SelectedIndex = dt.Rows.Count - 1
            AccYear.Focus()
        End If
        AccYear_SelectionChanged(Nothing, Nothing)
        Username.Focus()

    End Sub
    Dim Lop As Boolean = False

    Private Sub LoadEmployees()
        Dim CboName As String = "ArName"
        bm.FillCombo("select Id," & CboName & " Name from Employees where SystemUser='1' and Stopped='0' union select 0 Id,'-' Name order by Name", Username)
    End Sub

    Private Sub AccYear_SelectionChanged(sender As Object, e As SelectionChangedEventArgs) Handles AccYear.SelectionChanged
        Try
            If Lop Then Return
            Dim m As MainWindow = Application.Current.MainWindow
            Md.UdlName = AccYear.SelectedValue
            If con.State = ConnectionState.Open Then con.Close()
            m.LoadConnection()
            bm = New BasicMethods
            LoadEmployees()
        Catch ex As Exception
        End Try
    End Sub

    Private Sub btnEditCurrentConnection_Click(sender As Object, e As RoutedEventArgs) Handles btnEditCurrentConnection.Click
        Dim frm As New EditConnection
        frm.Show()
        frm.Hide()
        frm.AccYear.Text = Md.UdlName
        frm.Database.Text = con.Database
        frm.ServerName.Text = con.DataSource
        frm.ShowDialog()
        Login_Loaded(Nothing, Nothing)
        AccYear.Text = Md.UdlName
        AccYear_SelectionChanged(Nothing, Nothing)
    End Sub
End Class
