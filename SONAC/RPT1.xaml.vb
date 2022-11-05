Imports System.Data

Public Class RPT1
    Dim bm As New BasicMethods

    Dim m As MainWindow = Application.Current.MainWindow
    Public Flag As Integer = 0
    Public GroupsTable As String = "Groups"
    Public ItemsTable As String = "Items"


    Public Sub BasicForm_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return

        If GroupsTable = "Groups" Then
            bm.FillCombo(GroupsTable, CboMain, " where Flag=1")
        Else
            bm.FillCombo(GroupsTable, CboMain, "")
        End If

        LoadSuppliers(TreeView1, "select Id,Name from Suppliers order by Id")
        Select Case Flag
            Case 2, 5, 6
                TabGroups.Header = "العملاء"
                LoadSuppliers(TreeView1, "select Id,Name from Customers order by Id")
                Rdo2.Content = "حسب العميل"
                If Flag = 5 Then
                    WarpPanel1.Visibility = Windows.Visibility.Hidden
                    WarpPanel2.Visibility = Windows.Visibility.Hidden
                End If
            Case 3, 4
                PanelGroups.Margin = PanelGroups_Copy.Margin
                PanelGroups_Copy.Visibility = Windows.Visibility.Hidden
                btnNotSelectAll1.Margin = btnNotSelectAll2.Margin
                btnSelectAll1.Margin = btnSelectAll2.Margin
                btnNotSelectAll2.Visibility = Windows.Visibility.Hidden
                btnSelectAll2.Visibility = Windows.Visibility.Hidden
                LoadSuppliers(TreeView1, "select Id,Name from Suppliers order by Id")
                WarpPanel1.Visibility = Windows.Visibility.Hidden
                If Flag = 3 Then WarpPanel2.Visibility = Windows.Visibility.Hidden
                If Flag = 4 Then
                    Rdo4.IsChecked = True
                    Rdo5.Visibility = Windows.Visibility.Hidden
                End If
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



    Private Sub CboMain_SelectionChanged(sender As Object, e As SelectionChangedEventArgs) Handles CboMain.SelectionChanged
        Try
            LoadSuppliers(TreeView2, "select Id,Name from " + ItemsTable + " where (GroupId='" & CboMain.SelectedValue.ToString & "' or '" & CboMain.SelectedValue.ToString & "'=0) order by Id")
        Catch ex As Exception
        End Try

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
                        rpt.Rpt = "InMotion1.rpt"
                        H2 = Rdo4.Content
                    ElseIf Rdo5.IsChecked Then
                        rpt.Rpt = "InMotion2.rpt"
                        H2 = Rdo5.Content
                    Else
                        rpt.Rpt = "InMotion3.rpt"
                        H2 = Rdo6.Content
                    End If
                Else
                    H1 = Rdo1.Content
                    If Rdo4.IsChecked Then
                        rpt.Rpt = "InMotion4.rpt"
                        H2 = Rdo4.Content
                    ElseIf Rdo5.IsChecked Then
                        rpt.Rpt = "InMotion5.rpt"
                        H2 = Rdo5.Content
                    Else
                        rpt.Rpt = "InMotion6.rpt"
                        H2 = Rdo6.Content
                    End If
                End If
                If bm.ExecuteScalar("SELECT HazFarza FROM [Groups] where ID='" & CboMain.SelectedValue.ToString & "'") = "0" Then
                    rpt.Rpt = "I" & rpt.Rpt
                End If
            Case 2
                If Rdo2.IsChecked Then
                    H1 = Rdo2.Content
                    If Rdo4.IsChecked Then
                        rpt.Rpt = "OutMotion1.rpt"
                        H2 = Rdo4.Content
                    ElseIf Rdo5.IsChecked Then
                        rpt.Rpt = "OutMotion2.rpt"
                        H2 = Rdo5.Content
                    Else
                        rpt.Rpt = "OutMotion3.rpt"
                        H2 = Rdo6.Content
                    End If
                Else
                    H1 = Rdo1.Content
                    If Rdo4.IsChecked Then
                        rpt.Rpt = "OutMotion4.rpt"
                        H2 = Rdo4.Content
                    ElseIf Rdo5.IsChecked Then
                        rpt.Rpt = "OutMotion5.rpt"
                        H2 = Rdo5.Content
                    Else
                        rpt.Rpt = "OutMotion6.rpt"
                        H2 = Rdo6.Content
                    End If
                End If
            Case 3
                rpt.Rpt = "HalfTax.rpt"
            Case 4
                If Rdo6.IsChecked = True Then
                    rpt.Rpt = "PurchaseAll2.rpt"
                Else
                    rpt.Rpt = "PurchaseAll.rpt"
                End If
            Case 5
                rpt.Rpt = "OutMotionDay.rpt"
            Case 6
                If Rdo2.IsChecked Then
                    H1 = Rdo2.Content
                    If Rdo4.IsChecked Then
                        rpt.Rpt = "OutMotionFreezingFinal1.rpt"
                        H2 = Rdo4.Content
                    ElseIf Rdo5.IsChecked Then
                        rpt.Rpt = "OutMotionFreezingFinal2.rpt"
                        H2 = Rdo5.Content
                    Else
                        rpt.Rpt = "OutMotionFreezingFinal3.rpt"
                        H2 = Rdo6.Content
                    End If
                Else
                    H1 = Rdo1.Content
                    If Rdo4.IsChecked Then
                        rpt.Rpt = "OutMotionFreezingFinal4.rpt"
                        H2 = Rdo4.Content
                    ElseIf Rdo5.IsChecked Then
                        rpt.Rpt = "OutMotionFreezingFinal5.rpt"
                        H2 = Rdo5.Content
                    Else
                        rpt.Rpt = "OutMotionFreezingFinal6.rpt"
                        H2 = Rdo6.Content
                    End If
                End If
        End Select
        rpt.paraname = New String() {"@GroupID", "GroupName", "@SupplierId", "@CustomerId", "@ToId", "@ItemId", "@FromDate", "@ToDate", "Header", "H1", "H2"}
        rpt.paravalue = New String() {CboMain.SelectedValue.ToString, CboMain.Text, ss, ss, ss, ii, FromDate.SelectedDate, ToDate.SelectedDate, CType(Parent, Page).Title, H1, H2}
        rpt.ShowDialog()
    End Sub
End Class
