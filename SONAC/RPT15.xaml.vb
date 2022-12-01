Imports System.Data

Public Class RPT15
    Dim bm As New BasicMethods

    Dim m As MainWindow = Application.Current.MainWindow
    Public Flag As Integer = 0


    Public Sub BasicForm_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return
        
        LoadSuppliers(TreeView1, "select Id,Name from Suppliers order by Id")
        LoadSuppliers(TreeView2, "select Id,Name from Items2 order by Id")

        Select Case Flag
            Case 2
                TabGroups.Header = "العملاء"
                LoadSuppliers(TreeView1, "select Id,Name from Customers order by Id")
                Rdo2.Content = "حسب العميل"
            Case 3
                WarpPanel1.Visibility = Visibility.Hidden
                WarpPanel2.Visibility = Visibility.Hidden
            Case 4
                WarpPanel1.Visibility = Visibility.Hidden
                WarpPanel2.Visibility = Visibility.Visible
        End Select
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
                nn.FontFamily = btnNotSelectAll1.FontFamily
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

    Private Sub btnSelectAll1_Click(sender As Object, e As RoutedEventArgs) Handles btnSelectAll1.Click
        selection(TreeView1, True)
    End Sub

    Private Sub btnNotSelectAll1_Click(sender As Object, e As RoutedEventArgs) Handles btnNotSelectAll1.Click
        selection(TreeView1, False)
    End Sub

    Private Sub btnSelectAll2_Click(sender As Object, e As RoutedEventArgs) Handles btnSelectAll2.Click
        selection(TreeView2, True)
    End Sub

    Private Sub btnNotSelectAll2_Click(sender As Object, e As RoutedEventArgs) Handles btnNotSelectAll2.Click
        selection(TreeView2, False)
    End Sub


    Private Sub Button2_Click(sender As Object, e As RoutedEventArgs) Handles Button2.Click

        Dim ss As String = "0,"
        For i As Integer = 0 To TreeView1.Items.Count - 1
            If CType(TreeView1.Items(i).Header, CheckBox).IsChecked Then
                ss &= TreeView1.Items(i).Tag & ","
            End If
        Next
        ss = Mid(ss, 1, ss.Length - 1)

        Dim ii As String = "0,"
        For i As Integer = 0 To TreeView2.Items.Count - 1
            If CType(TreeView2.Items(i).Header, CheckBox).IsChecked Then
                ii &= TreeView2.Items(i).Tag & ","
            End If
        Next
        ii = Mid(ii, 1, ii.Length - 1)
        Dim H1, H2 As String
        Dim rpt As New ReportViewer
        Select Case Flag
            Case 1
                If Rdo2.IsChecked Then
                    H1 = Rdo2.Content
                    If Rdo4.IsChecked Then
                        rpt.Rpt = "1.rpt"
                        H2 = Rdo4.Content
                    Else
                        rpt.Rpt = "3.rpt"
                        H2 = Rdo6.Content
                    End If
                Else
                    H1 = Rdo1.Content
                    If Rdo4.IsChecked Then
                        rpt.Rpt = "4.rpt"
                        H2 = Rdo4.Content
                    Else
                        rpt.Rpt = "6.rpt"
                        H2 = Rdo6.Content
                    End If
                End If
            Case 2
                If Rdo2.IsChecked Then
                    H1 = Rdo2.Content
                    If Rdo4.IsChecked Then
                        rpt.Rpt = "1.rpt"
                        H2 = Rdo4.Content
                    Else
                        rpt.Rpt = "3.rpt"
                        H2 = Rdo6.Content
                    End If
                Else
                    H1 = Rdo1.Content
                    If Rdo4.IsChecked Then
                        rpt.Rpt = "4.rpt"
                        H2 = Rdo4.Content
                    Else
                        rpt.Rpt = "6.rpt"
                        H2 = Rdo6.Content
                    End If
                End If
            Case 3
                rpt.Rpt = "Loan1.rpt"
            Case 4
                rpt.Rpt = "Loan2.rpt"
                If Rdo2.IsChecked Then rpt.Rpt = "Loan3.rpt"
        End Select

        'rpt.Rpt = "SalesMaster2.rpt"

        rpt.paraname = New String() {"@SupplierId", "@CustomerId", "@ItemId", "@FromDate", "@ToDate", "Header", "H1", "H2"}
        rpt.paravalue = New String() {ss, ss, ii, FromDate.SelectedDate, ToDate.SelectedDate, CType(Parent, Page).Title, H1, H2}
        rpt.ShowDialog()
    End Sub
End Class
