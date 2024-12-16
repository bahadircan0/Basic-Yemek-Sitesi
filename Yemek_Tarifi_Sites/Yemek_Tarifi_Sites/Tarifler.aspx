<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel runat="server" ID="Panel1">
        <asp:Label ID="Label2" runat="server" Text="TARİF LİSTESİ" CssClass="baslik"></asp:Label>
    </asp:Panel>
    <asp:Panel runat="server" ID="Panel2">
        <asp:DataList runat="server" ID="DataList1">
            <ItemTemplate>
                    <div class="a2" style="width:450px">
                        <div>
                            <asp:Label runat="server" ID="Label1" Text='<%# Eval("TarifAd") %>'></asp:Label></div>

                        <div ><a href="TarifOnerDetay.aspx?Tarifid=<%# Eval("Tarifid") %>">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/Read.png" /></a></div>
                    </div>

            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

