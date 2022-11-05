Imports System.Data

Public Class Prices
    Dim bm As New BasicMethods

    Dim dt As New DataTable
    Dim dv As New DataView
    Public Header As String = ""
    Public Flag As Integer = 1
    Public Tablename As String = "CustomerItems"
    Dim tbl As String = "Customers"
    Dim Key As String = "CustomerId"
    Dim ItemsTable As String = "Items"

    Private Sub Window_Loaded(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles MyBase.Loaded
        If Flag = 2 Then
            lblToId.Content = "المورد"
            Tablename = "SupplierItems"
            tbl = "Suppliers"
            Key = "SupplierId"
        ElseIf Flag = 3 Then
            lblToId.Content = "المورد"
            Tablename = "SupplierItemsFinal"
            tbl = "Suppliers"
            Key = "SupplierId"
            ItemsTable = "ItemsFinal"
        End If
        GetData()
        If bm.TestIsLoaded(Me) Then Return
        LoadResource()
        Banner1.StopTimer = True
        Banner1.Header = Header
    End Sub

    Private Sub txtID_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles ToId.KeyDown
        bm.MyKeyPress(sender, e)
    End Sub

    Private Sub ToId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles ToId.KeyUp
        If bm.ShowHelp(lblToId.Content, ToId, ToName, e, "select Id,Name from " & tbl) Then
            ToId_LostFocus(Nothing, Nothing)
        End If
    End Sub

    Private Sub ToId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles ToId.LostFocus
        bm.LostFocus(ToId, ToName, "select Name from " & tbl & " where Id=" & ToId.Text.Trim())
        GetData()
    End Sub


    Private Sub DataGridView1_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles Me.PreviewKeyDown
        Try
            If e.Key = Input.Key.Up Then
                DataGridView1.SelectedIndex = DataGridView1.SelectedIndex - 1
            ElseIf e.Key = Input.Key.Down Then
                DataGridView1.SelectedIndex = DataGridView1.SelectedIndex + 1
            End If
        Catch ex As Exception
        End Try
    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles btnSave.Click
        bm.ExecuteNonQuery("delete " & Tablename & " where " & Key & "=" & ToId.Text)

        If Flag = 2 Then

            For i As Integer = 0 To dt.Rows.Count - 1
                bm.ExecuteNonQuery("insert " & Tablename & " (" & Key & ",ItemId,PurchasePrice,Farza,Hafez) select '" & ToId.Text & "','" & dt.Rows(i)(0) & "','" & dt.Rows(i)(2) & "','" & dt.Rows(i)(3) & "','" & dt.Rows(i)(4) & "'")
            Next

        Else

            For i As Integer = 0 To dt.Rows.Count - 1
                bm.ExecuteNonQuery("insert " & Tablename & " (" & Key & ",ItemId,Price) select '" & ToId.Text & "','" & dt.Rows(i)(0) & "','" & dt.Rows(i)(2) & "'")
            Next

        End If
        GetData()
    End Sub

    Private Sub LoadResource()
        'lblName.SetResourceReference(Label.ContentProperty, "Name")
    End Sub

    Private Sub GetData()

        Try
            If ToId.Text = "" Then Return
            dt = New DataTable
            If Flag = 2 Then
                dt = bm.ExcuteAdapter("select It.Id 'كود الصنف',It.Name 'اسم الصنف',isnull(t.PurchasePrice,it.PurchasePrice) 'سعر الخام',isnull(t.Farza,it.Farza) 'سعر الفرزة',isnull(t.Hafez,it.Hafez)'الحافز' from (select * from " & Tablename & "  where (SupplierId='" & ToId.Text & "' or SupplierId is null)) t right join " & ItemsTable & " it on(t.ItemId=it.Id) order by It.Id")
            ElseIf Flag = 3 Then
                dt = bm.ExcuteAdapter("select It.Id 'كود الصنف',It.Name 'اسم الصنف',isnull(t.Price,it.Price) 'السعر'	from (select * from " & Tablename & " where (SupplierId='" & ToId.Text & "' or SupplierId is null)) t right join " & ItemsTable & " it on(t.ItemId=it.Id) order by It.Id")
            Else
                dt = bm.ExcuteAdapter("select It.Id 'كود الصنف',It.Name 'اسم الصنف',isnull(t.Price,it.SalesPrice) 'السعر'	from (select * from " & Tablename & " where (CustomerId='" & ToId.Text & "' or CustomerId is null)) t right join " & ItemsTable & " it on(t.ItemId=it.Id) order by It.Id")

            End If
            dt.TableName = "tbl"

            dv.Table = dt
            DataGridView1.ItemsSource = dv

            DataGridView1.Columns(0).IsReadOnly = True
            DataGridView1.Columns(1).IsReadOnly = True
            DataGridView1.Columns(1).Width = 400
            DataGridView1.SelectedIndex = 0
        Catch
        End Try

    End Sub

End Class