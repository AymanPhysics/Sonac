Imports System.Data

Public Class RPT16
    Dim bm As New BasicMethods

    Dim m As MainWindow = Application.Current.MainWindow
    Public Flag As Integer = 0


    Public Sub BasicForm_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return

        Dim MyNow As DateTime = bm.MyGetDate()
        ToDate.SelectedDate = New DateTime(MyNow.Year, MyNow.Month, MyNow.Day, 0, 0, 0)

        LoadSuppliers(TreeView2, "select Id,Name from Suppliers order by Id")
    End Sub

    Private Sub ItemId_KeyUp(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles ItemId.KeyUp
        If bm.ShowHelp("Items", ItemId, ItemName, e, "select Id,Name from Items2") Then ItemId_LostFocus(ItemId, Nothing)
    End Sub

    Private Sub ItemId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles ItemId.LostFocus
        bm.LostFocus(ItemId, ItemName, "select Name from Items2 where Id=" & ItemId.Text.Trim())
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

    Private Sub Button2_Click(sender As Object, e As RoutedEventArgs) Handles Button2.Click

        Dim ii As String = "0,"
        For i As Integer = 0 To TreeView2.Items.Count - 1
            If CType(TreeView2.Items(i).Header, CheckBox).IsChecked Then
                ii &= TreeView2.Items(i).Tag & ","
            End If
        Next
        ii = Mid(ii, 1, ii.Length - 1)
        Dim rpt As New ReportViewer
        rpt.paraname = New String() {"@ItemId", "@SupID", "@ToDate", "Header"}
        rpt.paravalue = New String() {ItemId.Text, ii, ToDate.SelectedDate, CType(Parent, Page).Title}
        rpt.Rpt = "ItemLoanCardBySup.rpt"
        rpt.ShowDialog()

    End Sub
End Class
