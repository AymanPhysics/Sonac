Imports System.Data

Public Class UpdatePurchasesPrice
    Public TableName As String = ""
    Public SubId As String = "Id"

    Dim dt As New DataTable
    Dim bm As New BasicMethods

    Dim m As MainWindow = Application.Current.MainWindow
    Public Flag As Integer = 0


    Public Sub BasicForm_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return
        bm.FillCombo("Groups", CboMain, "")
        LoadSuppliers(TreeView1, "select Id,Name from Suppliers order by Id")
        btnNew_Click(sender, e)
    End Sub

    Sub ClearControls()
        bm.SetNoImage(Image1)
        FromDate.SelectedDate = bm.MyGetDate
        ToDate.SelectedDate = bm.MyGetDate
    End Sub


    Private Sub txtID_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs)
        bm.MyKeyPress(sender, e)
    End Sub

    Private Sub LoadSuppliers(tr As TreeView, statement As String)
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
            LoadSuppliers(TreeView2, "select Id,Name from Items where GroupId='" & CboMain.SelectedValue.ToString & "' order by Id")
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

            dt = bm.ExcuteAdapter("LoadInMotion", {"GroupID", "SupplierId", "ItemId", "FromDate", "ToDate"}, {CboMain.SelectedValue, d1, d2, bm.ToStrDate(FromDate.SelectedDate), bm.ToStrDate(ToDate.SelectedDate)}, {SqlDbType.Int, SqlDbType.Structured, SqlDbType.Structured, SqlDbType.VarChar, SqlDbType.VarChar})
            dt.TableName = "tbl"

            Dim dv As New DataView
            dv.Table = dt
            DataGridView1.ItemsSource = dv

            
            DataGridView1.Columns(dt.Columns("ID").Ordinal).Header = "رقم الإذن"
            DataGridView1.Columns(dt.Columns("DayDate").Ordinal).Header = "التاريخ"
            DataGridView1.Columns(dt.Columns("CarNo").Ordinal).Header = "رقم السيارة"
            DataGridView1.Columns(dt.Columns("S_Name").Ordinal).Header = "المورد"
            DataGridView1.Columns(dt.Columns("It_Name").Ordinal).Header = "الصنف"
            DataGridView1.Columns(dt.Columns("Qty").Ordinal).Header = "العدد"
            DataGridView1.Columns(dt.Columns("WieghtNet").Ordinal).Header = "صافى الوزن"
            DataGridView1.Columns(dt.Columns("Exchange").Ordinal).Header = "المعامل"
            DataGridView1.Columns(dt.Columns("WieghtNet2").Ordinal).Header = "الصافى بعد المعامل"
            DataGridView1.Columns(dt.Columns("QtyDed").Ordinal).Header = "خصم بالكيلو"
            DataGridView1.Columns(dt.Columns("QtyDedPerc").Ordinal).Header = "خصم بالكيلو عن كل وحدة"
            DataGridView1.Columns(dt.Columns("QtyPerc").Ordinal).Header = "خصم نسبة"
            DataGridView1.Columns(dt.Columns("QtyPercValue").Ordinal).Header = "مقدار الخصم"
            DataGridView1.Columns(dt.Columns("WieghtNetFinal").Ordinal).Header = "صافى الوزن بعد الخصم"
            DataGridView1.Columns(dt.Columns("QtyPercValueEnd").Ordinal).Header = "الخصم الكلى"
            DataGridView1.Columns(dt.Columns("QtyQre").Ordinal).Header = "الكمية خام"
            DataGridView1.Columns(dt.Columns("PriceOre").Ordinal).Header = "السعر خام"
            DataGridView1.Columns(dt.Columns("ValueOre").Ordinal).Header = "القيمة خام"
            DataGridView1.Columns(dt.Columns("QtyFarza").Ordinal).Header = "الكمية فرزة"
            DataGridView1.Columns(dt.Columns("PriceFarza").Ordinal).Header = "السعر فرزة"
            DataGridView1.Columns(dt.Columns("ValueFarza").Ordinal).Header = "القيمة فرزة"
            DataGridView1.Columns(dt.Columns("ValueTotal").Ordinal).Header = "إجمالي القيمة"

            DataGridView1.Columns(dt.Columns("ID").Ordinal).IsReadOnly = True
            DataGridView1.Columns(dt.Columns("DayDate").Ordinal).IsReadOnly = True
            DataGridView1.Columns(dt.Columns("CarNo").Ordinal).IsReadOnly = True
            DataGridView1.Columns(dt.Columns("S_Name").Ordinal).IsReadOnly = True
            DataGridView1.Columns(dt.Columns("It_Name").Ordinal).IsReadOnly = True
            DataGridView1.Columns(dt.Columns("WieghtNet").Ordinal).IsReadOnly = True
            DataGridView1.Columns(dt.Columns("WieghtNet2").Ordinal).IsReadOnly = True
            DataGridView1.Columns(dt.Columns("QtyPercValue").Ordinal).IsReadOnly = True
            DataGridView1.Columns(dt.Columns("WieghtNetFinal").Ordinal).IsReadOnly = True
            DataGridView1.Columns(dt.Columns("QtyPercValueEnd").Ordinal).IsReadOnly = True
            DataGridView1.Columns(dt.Columns("ValueTotal").Ordinal).IsReadOnly = True

            DataGridView1.SelectedIndex = 0
        Catch
        End Try

        For i = 0 To DataGridView1.Items.Count - 1
            Calc(i, 0, False)
        Next

        CalcTotal()

    End Sub

    Private Sub btnSelectAll1_Copy_Click(sender As Object, e As RoutedEventArgs) Handles btnSelectAll1_Copy.Click
        For i As Integer = 0 To CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 1
            CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(0) = True
        Next
        DataGridView1.CommitEdit()
        CalcTotal()
    End Sub

    Private Sub btnNotSelectAll1_Copy_Click(sender As Object, e As RoutedEventArgs) Handles btnNotSelectAll1_Copy.Click
        For i As Integer = 0 To CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 1
            CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(0) = False
        Next
        DataGridView1.CommitEdit()
        CalcTotal()
    End Sub
    Dim lop As Boolean = False

    Private Sub DataGridView1_CellEditEnding(sender As Object, e As DataGridCellEditEndingEventArgs) Handles DataGridView1.CellEditEnding
        Try
            Calc(e.Row.GetIndex, e.Column.DisplayIndex)
        Catch
        End Try
    End Sub


    Private Sub btnSave_Click(sender As Object, e As RoutedEventArgs) Handles btnSave.Click
        For i As Integer = 0 To CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 1
            Try
                If CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)("ID") Is DBNull.Value Then Continue For
                If CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(0) Then
                    bm.ExecuteNonQuery("update InMotion set Qty='" & g(i, "Qty") & "',WieghtNet='" & g(i, "WieghtNet") & "',Exchange='" & g(i, "Exchange") & "',WieghtNet2='" & g(i, "WieghtNet2") & "',QtyDed='" & g(i, "QtyDed") & "',QtyDedPerc='" & g(i, "QtyDedPerc") & "',QtyPerc='" & g(i, "QtyPerc") & "',QtyPercValue='" & g(i, "QtyPercValue") & "',WieghtNetFinal='" & g(i, "WieghtNetFinal") & "',QtyQre='" & g(i, "QtyQre") & "',PriceOre='" & g(i, "PriceOre") & "',ValueOre='" & g(i, "ValueOre") & "',QtyFarza='" & g(i, "QtyFarza") & "',PriceFarza='" & g(i, "PriceFarza") & "',ValueFarza='" & g(i, "ValueFarza") & "',ValueTotal='" & g(i, "ValueTotal") & "' where GroupID='" & CboMain.SelectedValue & "' and ID='" & g(i, "ID") & "'")
                End If
            Catch
            End Try
        Next
        btnSelectAll1_Copy1_Click(Nothing, Nothing)
    End Sub

    Private Sub btnNew_Click(sender As Object, e As RoutedEventArgs) Handles btnNew.Click
        ClearControls()
        DataGridView1.ItemsSource = Nothing
    End Sub

    Private Function g(row As Integer, col As Integer)
        Try
            If CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(col).ToString = "" Then
                Return 0
            End If
            Return Val(CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(col))
        Catch ex As Exception
            Return 0
        End Try
    End Function

    Private Function g(row As Integer, col As String)
        Try
            If CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(col).ToString = "" Then
                Return 0
            End If
            Return Val(CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(col))
        Catch ex As Exception
            Return 0
        End Try
    End Function

    Private Sub Calc(row As Integer, col As Integer, Optional DoCalcTotal As Boolean = True)
        If CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)(1) Is DBNull.Value Then Return
        If lop Then Return
        lop = True
        Try
            Try
                DataGridView1.CommitEdit(DataGridEditingUnit.Cell, True)
                DataGridView1.CommitEdit(DataGridEditingUnit.Row, True)
            Catch
            End Try


            If g(row, "Exchange") = 0 Then CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("Exchange") = 1
            Dim x As String = Math.Round(g(row, "WieghtNet") / g(row, "Exchange"), 5, MidpointRounding.AwayFromZero)
            Try
                If Not x.ToString.Contains(".") Then
                    x = x.ToString & ".00000"
                End If
                While x.Split(".")(1).Length < 5
                    x = x & "0"
                End While
                x = x.ToString.Substring(0, x.ToString.Length - 2)
            Catch
            End Try

            CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("WieghtNet2") = x

            If g(row, "QtyDed") / 1000 > g(row, "WieghtNet2") Then
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("QtyDed") = "0"
            End If
            Dim d As Decimal = g(row, "WieghtNet2") - g(row, "QtyDed") / 1000
            d = d - (g(row, "Qty") * g(row, "QtyDedPerc") / 1000)
            CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("QtyPercValue") = d * g(row, "QtyPerc") / 100
            d = d - g(row, "QtyPercValue")
            CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("WieghtNetFinal") = Math.Round(d, 3, MidpointRounding.AwayFromZero)

            CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("QtyPercValueEnd") = Math.Round(g(row, "WieghtNet2") - g(row, "WieghtNetFinal"), 3, MidpointRounding.AwayFromZero)

            If g(row, "QtyQre") > g(row, "WieghtNetFinal") Then
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("QtyQre") = "0"
            End If

            If g(row, "QtyFarza") > g(row, "WieghtNetFinal") Then
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("QtyFarza") = "0"
            End If

            If dt.Columns(col).ColumnName = "QtyQre" Then
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("QtyFarza") = Math.Round(g(row, "WieghtNetFinal") - g(row, "QtyQre"), 3, MidpointRounding.AwayFromZero)
            Else
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("QtyQre") = Math.Round(g(row, "WieghtNetFinal") - g(row, "QtyFarza"), 3, MidpointRounding.AwayFromZero)
            End If

            If dt.Columns(col).ColumnName = "ValueOre" Then
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("ValueOre") = g(row, "ValueOre")
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("PriceOre") = Math.Round(g(row, "ValueOre") / g(row, "QtyQre"), 2, MidpointRounding.AwayFromZero)
            Else
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("PriceOre") = g(row, "PriceOre")
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("ValueOre") = Math.Round(g(row, "QtyQre") * g(row, "PriceOre"), 2, MidpointRounding.AwayFromZero)
            End If

            If dt.Columns(col).ColumnName = "ValueFarza" Then
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("ValueFarza") = g(row, "ValueFarza")
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("PriceFarza") = Math.Round(g(row, "ValueFarza") / g(row, "QtyFarza"), 2, MidpointRounding.AwayFromZero)
            Else
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("PriceFarza") = g(row, "PriceFarza")
                CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("ValueFarza") = Math.Round(g(row, "QtyFarza") * g(row, "PriceFarza"), 2, MidpointRounding.AwayFromZero)
            End If


        Catch
        End Try

        Try
            CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("ValueOre") = Math.Round(g(row, "ValueOre"), 2)
            CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("ValueFarza") = Math.Round(g(row, "ValueFarza"), 2)

            CType(DataGridView1.ItemsSource, DataView).Table.Rows(row)("ValueTotal") = g(row, "ValueOre") + g(row, "ValueFarza")
        Catch ex As Exception
        End Try

        If DoCalcTotal Then CalcTotal()

        lop = False
    End Sub

    Sub CalcTotal()
        Try
            For c As Integer = 1 To CType(DataGridView1.ItemsSource, DataView).Table.Columns.Count - 1
                Select Case dt.Columns(c).ColumnName
                    Case "ID", "DayDate", "CarNo", "S_Name", "It_Name"
                        CType(DataGridView1.ItemsSource, DataView).Table.Rows(CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 1)(c) = "----------"
                        Continue For
                    Case "تحديد", "Exchange", "QtyDedPerc", "QtyPerc", "PriceOre", "PriceFarza"
                        Continue For
                    Case Else

                        Dim v As Decimal = 0
                        For r As Integer = 0 To CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 2
                            If CType(DataGridView1.ItemsSource, DataView).Table.Rows(r)(1) Is DBNull.Value Then Continue For
                            If CType(DataGridView1.ItemsSource, DataView).Table.Rows(r)(0) Then
                                v += g(r, c)
                            End If
                        Next
                        CType(DataGridView1.ItemsSource, DataView).Table.Rows(CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 1)(c) = v

                End Select
            Next
        Catch ex As Exception
        End Try
    End Sub

    Private Sub DataGridView1_RowEditEnding(sender As Object, e As DataGridRowEditEndingEventArgs) Handles DataGridView1.RowEditEnding
        Try
            Calc(e.Row.GetIndex, DataGridView1.CurrentCell.Column.DisplayIndex)
        Catch
        End Try
    End Sub

    Sub Change(txtCurrent As TextBox, txt As TextBox, x As String)
        Try
            For i As Integer = 0 To CType(DataGridView1.ItemsSource, DataView).Table.Rows.Count - 2
                Try
                    If CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(1) Is DBNull.Value Then Continue For
                    If CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(0) AndAlso (Val(txtCurrent.Text) = 0 OrElse Val(txtCurrent.Text) = Val(CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(x))) Then
                        CType(DataGridView1.ItemsSource, DataView).Table.Rows(i)(x) = Val(txt.Text)
                        Calc(i, dt.Columns(x).Ordinal)
                    End If
                Catch
                End Try
            Next
        Catch ex As Exception
        End Try
    End Sub

    Private Sub btnChangePrice_Click(sender As Object, e As RoutedEventArgs) Handles btnChangePrice.Click
        Change(PriceCurrent, Price, "PriceOre")
    End Sub

    Private Sub btnChangePrice2_Click(sender As Object, e As RoutedEventArgs) Handles btnChangePrice2.Click
        Change(Price2Current, Price2, "PriceFarza")
    End Sub

    Private Sub btnChange6_Click(sender As Object, e As RoutedEventArgs) Handles btnChange6.Click
        Change(txt6, txt62, "Exchange")
    End Sub

    Private Sub btnChange8_Click(sender As Object, e As RoutedEventArgs) Handles btnChange8.Click
        Change(txt8, txt82, "QtyDed")
    End Sub

    Private Sub btnChange9_Click(sender As Object, e As RoutedEventArgs) Handles btnChange9.Click
        Change(txt9, txt92, "QtyDedPerc")
    End Sub

    Private Sub btnChange10_Click(sender As Object, e As RoutedEventArgs) Handles btnChange10.Click
        Change(txt10, txt102, "QtyPerc")
    End Sub
End Class
