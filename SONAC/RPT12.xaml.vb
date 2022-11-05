Imports System.Data

Public Class RPT12

    Dim bm As New BasicMethods
    Dim dt As New DataTable
    Public Flag As Integer = 0
    Public RPTFlag As Integer = 0

    Public Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles Button2.Click
        If StoreId.Visibility = Windows.Visibility.Visible AndAlso StoreId.Text.Trim = "" Then
            bm.ShowMSG("برجاء تحديد المخزن")
            StoreId.Focus()
            Return
        End If
        If ItemId.Visibility = Windows.Visibility.Visible AndAlso ItemId.Text.Trim = "" Then
            bm.ShowMSG("برجاء تحديد الصنف")
            ItemId.Focus()
            Return
        End If
        Dim rpt As New ReportViewer
        rpt.paraname = New String() {"@ToDate", "@GroupId", "GroupName", "@TypeId", "TypeName", "@StoreId", "@ItemId", "@Brand", "BrandName", "Header", "P", "Z", "N", "@RPTFlag", "@ColorId", "@SizeId", "ColorName", "SizeName"}
        rpt.paravalue = New String() {ToDate.SelectedDate, Val(GroupId.Text), GroupName.Text, Val(TypeId.Text), TypeName.Text, Val(StoreId.Text), Val(ItemId.Text), Val(BrandId.Text), BrandName.Text, CType(Parent, Page).Title, IIf(P.IsChecked, 1, 0), IIf(Z.IsChecked, 1, 0), IIf(N.IsChecked, 1, 0), RPTFlag, 0, 0, "", ""}
        Select Case Flag
            Case 1
                rpt.Rpt = "ItemCard.rpt"
            Case 2
                rpt.Rpt = "StoreBal.rpt"
            Case 3
                rpt.Rpt = "StoreBalAll.rpt"
            Case 4
                rpt.Rpt = "StoreBalLimit.rpt"
            Case 5
                rpt.Rpt = "StoreBalCost.rpt"
            Case 6
                rpt.Rpt = "StoreBalAllCost.rpt"
            Case 7
                rpt.Rpt = "StoreBalLimit2.rpt"
            Case 8
                If RPTFlag = 1 Then
                    rpt.Rpt = "StoreFreezingPackagedBal.rpt"
                Else
                    rpt.Rpt = "StoreFreezingFinalBal.rpt"
                End If
            Case 9
                If RPTFlag = 1 Then
                    rpt.Rpt = "StoreFreezingPackagedBalAll.rpt"
                Else
                    rpt.Rpt = "StoreFreezingFinalBalAll.rpt"
                End If
            Case 10
                rpt.Rpt = "ItemCardFreezing.rpt"
                If RPTFlag = 2 Then rpt.Rpt = "ItemCardFreezing_1.rpt"
            Case 11
                rpt.Rpt = "ItemLoanCard.rpt"
            Case 12
                rpt.Rpt = "LoanBal.rpt"
        End Select
        rpt.ShowDialog()
    End Sub

    Private Sub UserControl_Loaded(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles MyBase.Loaded
        If bm.TestIsLoaded(Me) Then Return
        LoadResource()

        Select Case Flag
            Case 1, 10
                P.Visibility = Windows.Visibility.Hidden
                Z.Visibility = Windows.Visibility.Hidden
                N.Visibility = Windows.Visibility.Hidden
            Case 2, 4, 5, 7, 8
                lblItemId.Visibility = Windows.Visibility.Hidden
                ItemId.Visibility = Windows.Visibility.Hidden
                ItemName.Visibility = Windows.Visibility.Hidden
            Case 3, 6, 9, 12
                lblStoreId.Visibility = Windows.Visibility.Hidden
                StoreId.Visibility = Windows.Visibility.Hidden
                StoreName.Visibility = Windows.Visibility.Hidden

                lblItemId.Visibility = Windows.Visibility.Hidden
                ItemId.Visibility = Windows.Visibility.Hidden
                ItemName.Visibility = Windows.Visibility.Hidden
        End Select

        If Flag = 11 Then
            P.Visibility = Windows.Visibility.Hidden
            Z.Visibility = Windows.Visibility.Hidden
            N.Visibility = Windows.Visibility.Hidden

            lblStoreId.Visibility = Windows.Visibility.Hidden
            StoreId.Visibility = Windows.Visibility.Hidden
            StoreName.Visibility = Windows.Visibility.Hidden
        End If

        If Flag = 1 Or Flag = 10 Or Flag = 11 Or Flag = 12 Then
            lblGroupId.Visibility = Windows.Visibility.Hidden
            GroupId.Visibility = Windows.Visibility.Hidden
            GroupName.Visibility = Windows.Visibility.Hidden

            lblTypeId.Visibility = Windows.Visibility.Hidden
            TypeId.Visibility = Windows.Visibility.Hidden
            TypeName.Visibility = Windows.Visibility.Hidden
        End If

        If (Flag = 1 Or Flag = 8 Or Flag = 9 Or Flag = 10) And RPTFlag <> 1 Then
        Else
            lblBrand.Visibility = Windows.Visibility.Hidden
            BrandId.Visibility = Windows.Visibility.Hidden
            BrandName.Visibility = Windows.Visibility.Hidden
        End If

        Dim MyNow As DateTime = bm.MyGetDate()
        ToDate.SelectedDate = New DateTime(MyNow.Year, MyNow.Month, MyNow.Day, 0, 0, 0)
    End Sub

    Dim lop As Boolean = False



    Private Sub LoadResource()
        
    End Sub

    Private Sub StoreId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles StoreId.KeyUp
        If bm.ShowHelp("Stores", StoreId, StoreName, e, "select Id,Name from Stores") Then StoreId_LostFocus(StoreId, Nothing)
    End Sub

    Private Sub StoreId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles StoreId.LostFocus
        bm.LostFocus(StoreId, StoreName, "select Name from Stores where Id=" & StoreId.Text.Trim())
    End Sub

    Private Sub ItemId_KeyUp(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles ItemId.KeyUp
        If RPTFlag = 1 Then
            If bm.ShowHelp("Items", ItemId, ItemName, e, "select Id,Name from ItemsPackaged") Then ItemId_LostFocus(ItemId, Nothing)
        ElseIf RPTFlag = 2 Then
            If bm.ShowHelp("Items", ItemId, ItemName, e, "select Id,Name from ItemsFinal") Then ItemId_LostFocus(ItemId, Nothing)
        ElseIf Flag = 11 Then
            If bm.ShowHelp("Items", ItemId, ItemName, e, "select Id,Name from Items2") Then ItemId_LostFocus(ItemId, Nothing)
        Else
            If bm.ShowHelp("Items", ItemId, ItemName, e, "select Id,Name from Items") Then ItemId_LostFocus(ItemId, Nothing)
        End If
    End Sub

    Private Sub ItemId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles ItemId.LostFocus
        If RPTFlag = 1 Then
            bm.LostFocus(ItemId, ItemName, "select Name from ItemsPackaged where Id=" & ItemId.Text.Trim())
        ElseIf RPTFlag = 2 Then
            bm.LostFocus(ItemId, ItemName, "select Name from ItemsFinal where Id=" & ItemId.Text.Trim())
        ElseIf Flag = 11 Then
            bm.LostFocus(ItemId, ItemName, "select Name from Items2 where Id=" & ItemId.Text.Trim())
        Else
            bm.LostFocus(ItemId, ItemName, "select Name from Items where Id=" & ItemId.Text.Trim())
        End If
        Brand_LostFocus(Nothing, Nothing)
    End Sub

    Private Sub Brand_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles BrandId.LostFocus
        bm.LostFocus(BrandId, BrandName, "select Name from Brands where Id=" & BrandId.Text.Trim())
    End Sub

    Private Sub BrandId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles BrandId.KeyUp
        bm.ShowHelp("Brands", BrandId, BrandName, e, "select Id,Name from Brands")
    End Sub

    Private Sub txtID_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles StoreId.KeyDown, ItemId.KeyDown, BrandId.KeyDown, GroupId.KeyDown, TypeId.KeyDown
        bm.MyKeyPress(sender, e)
    End Sub

    Private Sub GroupId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles GroupId.LostFocus
        If RPTFlag = 1 Then
            bm.LostFocus(GroupId, GroupName, "select Name from GroupsPackaged where Id=" & GroupId.Text.Trim())
        ElseIf RPTFlag = 2 Then
            bm.LostFocus(GroupId, GroupName, "select Name from GroupsFinal where Id=" & GroupId.Text.Trim())
        Else
            bm.LostFocus(GroupId, GroupName, "select Name from Groups where Id=" & GroupId.Text.Trim())
        End If
        TypeId_LostFocus(Nothing, Nothing)
    End Sub

    Private Sub TypeId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles TypeId.LostFocus
        If RPTFlag = 1 Then
            bm.LostFocus(TypeId, TypeName, "select Name from TypesPackaged where GroupId=" & GroupId.Text.Trim & " and Id=" & TypeId.Text.Trim())
        ElseIf RPTFlag = 2 Then
            bm.LostFocus(TypeId, TypeName, "select Name from TypesFinal where GroupId=" & GroupId.Text.Trim & " and Id=" & TypeId.Text.Trim())
        Else
            bm.LostFocus(TypeId, TypeName, "select Name from Types where GroupId=" & GroupId.Text.Trim & " and Id=" & TypeId.Text.Trim())
        End If
    End Sub

    Private Sub GroupId_KeyDown(ByVal sender As System.Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles GroupId.KeyUp
        If RPTFlag = 1 Then
            If bm.ShowHelp("Groups", GroupId, GroupName, e, "select Id,Name from GroupsPackaged") Then GroupId_LostFocus(sender, Nothing)
        ElseIf RPTFlag = 2 Then
            If bm.ShowHelp("Groups", GroupId, GroupName, e, "select Id,Name from GroupsFinal") Then GroupId_LostFocus(sender, Nothing)
        Else
            If bm.ShowHelp("Groups", GroupId, GroupName, e, "select Id,Name from Groups") Then GroupId_LostFocus(sender, Nothing)
        End If
    End Sub

    Private Sub TypeId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles TypeId.KeyUp
        If RPTFlag = 1 Then
            bm.ShowHelp("Types", TypeId, TypeName, e, "select Id,Name from TypesPackaged where GroupId=" & GroupId.Text.Trim)
        ElseIf RPTFlag = 2 Then
            bm.ShowHelp("Types", TypeId, TypeName, e, "select Id,Name from TypesFinal where GroupId=" & GroupId.Text.Trim)
        Else
            bm.ShowHelp("Types", TypeId, TypeName, e, "select Id,Name from Types where GroupId=" & GroupId.Text.Trim)
        End If
    End Sub

End Class