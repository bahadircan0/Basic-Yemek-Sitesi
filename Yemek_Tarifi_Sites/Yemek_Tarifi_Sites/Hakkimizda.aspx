<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList runat="server" ID="Datalist1" CssClass="container2">
        <ItemTemplate>
           <div class="container2" style="background-color:#BCCCDC"> <asp:Label runat="server" Text='<%# Eval("Metin") %>'></asp:Label></div>

        </ItemTemplate>
    </asp:DataList>
</asp:Content>

