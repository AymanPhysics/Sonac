Imports System.Data

Public Class UpdateSalesPrice
    Public TableName As String = ""
    Public SubId As String = "Id"
    
    Dim dt As New DataTable
    Dim bm As New BasicMethods

    Dim m As MainWindow = Application.Current.MainWindow
    Public Flag As Integer = 0


    Public Sub BasicForm_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return
        bm.FillCombo("Groups", CboMain, "")
        bm.FillCombo("SerialTypes", State, "")
        LoadCustomers(TreeView1, "select Id,Name from Customers order by Id")
        btnNew_Click(sender, e)
    End Sub



    Sub ClearControls()
        bm.SetNoImage(Image1)
        FromDate.SelectedDate = bm.MyGetDate
        ToDate.SelectedDate = bm.MyGetDate
        SerialDate.SelectedDate = bm.MyGetDate
        State.SelectedValue = 2
    End Sub




    Private Sub txtID_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs)
        bm.MyKeyPress(sender, e)
    End Sub

    Private Sub LoadCustomers(tr As TreeView, statement As String)
        tr.Items.Clear()
        Dim dt As DataTable = bm.ExcuteAdapter(statement)
        For i As Integer = 0 To dt.Rows.Count - 1
            Try
                Dim nn As New TreeViewItem
                nn.Foreground = Brushes.DarkRed
                nn.FontSize = 16
                nn.FontFamily = btnSave.FontFamily
                nn.Name = "Node_" & dt.Rows(i)("Id")
                nn.Tag = dt.Rows(i)("Id")
                nn.Header = New CheckBox With {.Content = dt.Rows(i)("Id") & "          " & dt.Rows(i)("Name")}
                tr.Items.Add(nn)
                AddHandler CType(nn.Header, CheckBox).Checked, AddressOf CheckedChanged
                AddHandler CType(nn.Header, CheckBox).Unchecked, AddressOf CheckedChanged
            Catch
            End Try
        Next

    End Sub

    Private Sub CheckedChanged(sender As Object, e As RoutedEventArgs)

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
            LoadCustomers(TreeView2, "select Id,Name from Items where GroupId='" & CboMain.SelectedValue.ToString & "' order by Id")
        Catch ex As Exception
        End Try

    End Sub

    Private Sub btnSelectAll1_Copy1_Click(sender As Object, e As RoutedEventArgs) Handles btnSelectAll1_Copy1.Click
        Try
            Dim d1 As New DataTable("d1")
            d1.Columns.Add("c1")
            For i As Integer = 0 To TreeView1.Items.Count - 1
                If CType(TreeView1.Items(i).Header, CheckBox).IsChecked Then
                    d1.Rows.Add({TreeView1.Items(i).Tag})
                End If
            Next

            Dim d2 As New DataTable("d2")
            d2.Columns.Add("c2")
            For i As Integer = 0 To TreeView2.Items.Count - 1
                If CType(TreeView2.Items(i).Header, CheckBox).IsChecked Then
                    d2.Rows.Add({TreeView2.Items(i).Tag})
                End If
            Next

            dt = bm.ExcuteAdapter("LoadOutMotion", {"GroupID", "CustomerId", "ItemId", "FromDate", "ToDate", "State"}, {CboMain.SelectedValue, d1, d2, bm.ToStrDate(FromDate.SelectedDate), bm.ToStrDate(ToDate.SelectedDate), State.SelectedValue}, {SqlDbType.Int, SqlDbType.Structured, SqlDbType.Structured, SqlDbType.VarChar, SqlDbType.VarChar, SqlDbType.Int})
            dt.TableName = "tbl"

            Dim dv As New DataView
            dv.Table = dt
            DataGridView1.ItemsSource = dv


            DataGridView1.Columns(0).Header = "تحديد"
            DataGridView1.Columns(1).Header = "رقم الإذن"
            DataGridView1.Columns(2).Header = "التاريخ"
            DataGridView1.Columns(3).Header = "رقم السيارة"
            DataGridView1.Columns(4).Header = "رقم الحاوية"
            DataGridView1.Columns(5).Header = "اسم العميل"
            DataGridView1.Columns(6).Header = "اسم الصنف"
            DataGridView1.Columns(7).Header = "العدد"
            DataGridView1.Columns(8).Header = "الوزن الصافى"
            DataGridView1.Columns(9).Header = "السعر"
            DataGridView1.Columns(10).Header = "القيمة"

            DataGridView1.Columns(1).IsReadOnly = True
            DataGridView1.Columns(2).IsReadOnly = True
            DataGridView1.Columns(3).IsReadOnly = True
            DataGridView1.Columns(4).IsReadOnly = True
            DataGridView1.Columns(5).IsReadOnly = True
            DataGridView1.Columns(6).IsReadOnly = True
            DataGridView1.Columns(7).IsReadOnly = True
            DataGridView1.Columns(8).IsReadOnly = True
            'DataGridView1.Columns(10).IsReadOnly = True
 
            DataGridView1.SelectedIndex = 0
        Catch
        End Try


    End Sub

    Private Sub btnSelectAll1_Copy_Click(sender As Object, e As RoutedEventArgs) Handles btnSelectAll1_Copy.Click
        For i As Integer = 0 To CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 1
            CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(0) = True
        Next
    End Sub

    Private Sub btnNotSelectAll1_Copy_Click(sender As Object, e As RoutedEventArgs) Handles btnNotSelectAll1_Copy.Click
        For i As Integer = 0 To CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 1
            CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(0) = False
        Next
    End Sub
    Dim lop As Boolean = False

    Private Sub DataGridView1_CellEditEnding(sender As Object, e As DataGridCellEditEndingEventArgs) Handles DataGridView1.CellEditEnding
        Try
            Calc(e.Row.GetIndex, e.Column.DisplayIndex)
        Catch
        End Try
    End Sub


    Private Sub btnSave_Click(sender As Object, e As RoutedEventArgs) Handles btnSave.Click
        If SerialDate.SelectedDate Is Nothing Then
            bm.ShowMSG("برجاء تحديد تاريخ السيريال")
            SerialDate.Focus()
            Return
        End If
        For i As Integer = 0 To CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 1
            Try
                If CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(1) Is DBNull.Value Then Continue For
                If CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(0) Then
                    bm.ExcuteNonQuery("UpdateOutMotion", {"GroupID", "Id", "Price", "Value", "SerialDate"}, {CboMain.SelectedValue, CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(1), CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(9), CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(10), bm.ToStrDate(SerialDate.SelectedDate)})
                End If
            Catch
            End Try
        Next
        btnSelectAll1_Copy1_Click(Nothing, Nothing)
    End Sub

    Private Sub btnNew_Click(sender As Object, e As RoutedEventArgs) Handles btnNew.Click
        DataGridView1.ItemsSource = Nothing
        ClearControls()
    End Sub

    Private Sub Calc(row As Integer, col As Integer)
        If lop Then Return
        lop = True
        Try
            Try
                DataGridView1.CommitEdit(DataGridEditingUnit.Cell, True)
                DataGridView1.CommitEdit(DataGridEditingUnit.Row, True)
            Catch
            End Try
            If col = 10 Then
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(10) = Val(CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(10))
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(9) = Val(CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(10)) / Val(CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(8))
            Else
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(9) = Val(CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(9))
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(10) = Val(CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(8)) * Val(CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(9))
            End If

        Catch
        End Try

        Try
            If Val(CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(8)) = 0 Then
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(10) = 0
            End If
            CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(9) = Math.Round(CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(9), 2)
            CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(10) = Math.Round(CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(10), 2)
        Catch ex As Exception
        End Try
        lop = False
    End Sub

    Private Sub DataGridView1_RowEditEnding(sender As Object, e As DataGridRowEditEndingEventArgs) Handles DataGridView1.RowEditEnding
        Try
            Calc(e.Row.GetIndex, DataGridView1.CurrentCell.Column.DisplayIndex)
        Catch
        End Try
    End Sub


    Private Sub btnChangePrice_Click(sender As Object, e As RoutedEventArgs) Handles btnChangePrice.Click
        For i As Integer = 0 To CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 1
            Try
                If CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(1) Is DBNull.Value Then Continue For
                If CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(0) Then
                    CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(9) = Val(Price.Text)
                    Calc(i, 9)
                End If
            Catch
            End Try
        Next

    End Sub
End Class
