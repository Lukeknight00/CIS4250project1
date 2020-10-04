<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="Category.aspx.vb" Inherits="CIS4250Fall2020OnlineStore.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-3">
        <div class="left-sidebar">
            <h2>
                <asp:Label ID="lblMainCategoryName" runat="server" Text=""></asp:Label>
            </h2>
            <div class="panel-group category-products" id="accordian">
                <!--category-productsr-->
				<asp:SqlDataSource ID="SqlDSSubCategory" ConnectionString="<%$ ConnectionStrings:ConnectionStringOnlineStore %>" SelectCommand="" runat="server"></asp:SqlDataSource>
				<asp:Repeater ID="rpSubCategory" runat="server" DataSourceID="SqlDSSubCategory">
					<ItemTemplate>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="Category.aspx?SubCategoryId=<%# Eval("ID")%>&SubCategoryName=<%# Trim(Eval("CategoryName")) %>&MainCategoryID=<% = Request.QueryString("MainCategoryID")%>&MainCategoryName=<% = Request.QueryString("MainCategoryName")%>"><%# Trim(Eval("CategoryName"))%></a></h4>
                            </div>
                        </div>
					</ItemTemplate>
				</asp:Repeater>
            </div><!--/category-productsr-->

        </div>
    </div>

    <div class="col-sm-9 padding-right">
        <div class="features_items">
            <!--features_items-->
            <h2 class="title text-center">
                <asp:Label ID="lblProductList" runat="server" Text="Featured Products"></asp:Label></h2>
			    <asp:SqlDataSource ID="SqlDSProductList" ConnectionString="<%$ ConnectionStrings:ConnectionStringOnlineStore %>" SelectCommand="" runat="server"></asp:SqlDataSource>
			    <asp:Repeater ID="rpProductList" runat="server" DataSourceID="SqlDSProductList">
				    <ItemTemplate>
                    <div class="panel panel-default">
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/shop/product12.jpg" alt="" />                            
                                        <h2>$<%# Trim(Eval("UnitPrice"))%></h2>
                                        <p>
                                            <a href="ProductDetail.aspx?ProductID=<%# Eval("ProductID")%>"><%# Trim(Eval("ProductNo"))%></a><br />
                                            <%# Trim(Eval("ProductName"))%>
                                        </p>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
				</ItemTemplate>
			    </asp:Repeater>
        </div><!--features_items-->
    </div>
</asp:Content>
