<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="product_list.aspx.cs" Inherits="ISD_CW.product_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <%--Listview control from toolbox to display the courses provided (product)--%>
    <asp:ListView ID="ListView" runat="server" DataKeyNames="ProductID" GroupItemCount="4" ItemType="ISD_CW.Models.product" SelectMethod="GetProducts">
        <EmptyDataTemplate>
            <table>
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <ItemTemplate>
            <td runat="server">
                <table>
                    <tr>
                        <td>
                            <a href="product_details.aspx?ProductID=<%#:Item.ProductID%>">
                                <img src="/Catalog/<%#:Item.ImagePath%>"
                                    width="100" height="75" style="border: solid" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="product_details.aspx?ProductID=<%#:Item.ProductID%>">
                                <span>
                                    <%#:Item.ProductName%>
                                            
                                </span>
                            </a>

                            <br />
                            <span>
                                <b>Price: </b><%#:String.Format("{0:c}", Item.UnitPrice)%>
                            </span>
                            <br />
                            <span>
                                <b>Duration: </b><%#:Item.Duration%>
                            </span>
                            <br />
                            <a href="AddToCart.aspx?ProductID=<%#:Item.ProductID%>">
                                <span>
                                    <span class="ProductListItem">
                                        <b>Add To Cart</b> </span></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                </p>
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table style="width: 100%;">
                <tbody>
                    <tr>
                        <td>
                            <table id="groupPlaceholderContainer" runat="server" style="width: 100%">
                                <tr id="groupPlaceholder"></tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr></tr>
                </tbody>
            </table>
        </LayoutTemplate>
    </asp:ListView>
</asp:Content>
