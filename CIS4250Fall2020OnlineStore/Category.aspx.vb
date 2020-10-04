Public Class Category
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("MainCategoryID") <> "" Then
            SqlDSSubCategory.SelectCommand = "Select * From Category Where parent = " & CInt(Request.QueryString("MainCategoryID"))
            lblMainCategoryName.Text = Request.QueryString("MainCategoryName")
            ' assign selectcommmand to SqlDSProductList for the featured products of the main category

            ' change lblProductList.Text to "Feature Products"
        End If
        If Request.QueryString("SubCategoryID") <> "" Then
            SqlDSProductList.SelectCommand = "Select * From Product Where subcategoryid = " & CInt(Request.QueryString("SubCategoryID"))
            lblProductList.Text = "Product list for " + Request.QueryString("SubCategoryName")
        End If
    End Sub

End Class