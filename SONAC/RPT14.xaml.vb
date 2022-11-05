Imports System.Data

Public Class RPT14
    Dim bm As New BasicMethods

    Dim m As MainWindow = Application.Current.MainWindow
    Public Flag As Integer = 0


    Public Sub BasicForm_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return
        bm.FillCombo("Groups", CboMain, " where Flag=1")

        If Flag = 3 Or Flag = 4 Then
            CboMain.Visibility = Windows.Visibility.Hidden
            lblDayDate_Copy.Visibility = Windows.Visibility.Hidden
            LoadSuppliers(TreeView2, "select Id,Name from Suppliers order by Id")
            TabGroups1.Header = "الموردين"
            WarpPanel1.Visibility = Windows.Visibility.Hidden
        End If

        Dim MyNow As DateTime = bm.MyGetDate()
        FromDate.SelectedDate = New DateTime(MyNow.Year, MyNow.Month, MyNow.Day, 0, 0, 0)
        ToDate.SelectedDate = New DateTime(MyNow.Year, MyNow.Month, MyNow.Day, 0, 0, 0)
    End Sub

    Private Sub LoadSuppliers(tr As TreeView, statement As String)
        tr.Items.Clear()
        Dim dt As DataTable = bm.ExcuteAdapter(statement)
        For i As Integer = 0 To dt.Rows.Count - 1
            Try
                Dim nn As New TreeViewItem
                nn.Foreground = Brushes.DarkRed
                nn.FontSize = 16
                nn.FontFamily = btnNotSelectAll2.FontFamily
                nn.Name = "Node_" & dt.Rows(i)("Id")
                nn.Tag = dt.Rows(i)("Id")
                nn.Header = New CheckBox With {.Content = dt.Rows(i)("Id") & "          " & dt.Rows(i)("Name")}
                tr.Items.Add(nn)
            Catch
            End Try
        Next

    End Sub

    Private Sub selection(tr As TreeView, p2 As Boolean)
        For i As Integer = 0 To tr.Items.Count - 1
            CType(tr.Items(i).Header, CheckBox).IsChecked = p2
        Next
    End Sub


    Private Sub btnSelectAll2_Click(sender As Object, e As RoutedEventArgs) Handles btnSelectAll2.Click
        selection(TreeView2, True)
    End Sub

    Private Sub btnNotSelectAll2_Click(sender As Object, e As RoutedEventArgs) Handles btnNotSelectAll2.Click
        selection(TreeView2, False)
    End Sub



    Private Sub CboMain_SelectionChanged(sender As Object, e As SelectionChangedEventArgs) Handles CboMain.SelectionChanged
        Try
            LoadSuppliers(TreeView2, "select Id,Name from Items where GroupId='" & CboMain.SelectedValue.ToString & "' order by Id")
        Catch ex As Exception
        End Try

    End Sub



    Private Sub Button2_Click(sender As Object, e As RoutedEventArgs) Handles Button2.Click

        Dim ii As String = "0,"
        For i As Integer = 0 To TreeView2.Items.Count - 1
            If CType(TreeView2.Items(i).Header, CheckBox).IsChecked Then
                ii &= TreeView2.Items(i).Tag & ","
            End If
        Next
        ii = Mid(ii, 1, ii.Length - 1)
        Dim rpt As New ReportViewer
        rpt.paraname = New String() {"@ItemId", "@GroupID", "@FromDate", "@ToDate", "Header", "@SupplierId"}
        rpt.paravalue = New String() {ii, CboMain.SelectedValue.ToString, FromDate.SelectedDate, ToDate.SelectedDate, CType(Parent, Page).Title, ii}
        Select Case Flag
            Case 1
                rpt.Rpt = "InMotionPiscol.rpt"
            Case 2
                rpt.Rpt = "OutMotionPiscol.rpt"
            Case 3
                rpt.Rpt = "LoanAll.rpt"
            Case 4
                rpt.Rpt = "LoanForSuppliers.rpt"
        End Select
        If Rdo6.IsChecked Then rpt.Rpt = "T" & rpt.Rpt
        If Flag = 1 AndAlso bm.ExecuteScalar("SELECT HazFarza FROM [Groups] where ID='" & CboMain.SelectedValue.ToString & "'") = "0" Then
            rpt.Rpt = "I" & rpt.Rpt
        End If
        rpt.ShowDialog()

    End Sub
End Class
