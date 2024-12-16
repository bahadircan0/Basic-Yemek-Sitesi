<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel runat="server" ID="Panel1">
        <asp:Label ID="Label2" runat="server" Text="YEMEK LİSTESi" CssClass="baslik"></asp:Label>
    </asp:Panel>
    <asp:Panel runat="server" ID="Panel2">
        <asp:DataList runat="server" ID="DataList1">
            <ItemTemplate>
                <div class="a3">
                    <asp:Label runat="server" ID="Label1" Text='<%# Eval("YemekAd") %>'></asp:Label>

                    <a href="YemekDüzenle.aspx?Yemekid=<%# Eval("Yemekid") %>">
                        <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/Resimler/Onayla.jpg" /></a>

                </div>
            </ItemTemplate>
        </asp:DataList>


        <asp:DataList runat="server" ID="DataList2">
            <ItemTemplate>
                <div style="color: black;height: 50px; display: flex; flex-direction: row; background-color: #cccccc; font-weight: bold; font-size: larger;width:450px;justify-content:center;align-items:center">
                    <asp:Label ID="Label3" runat="server" Text="GÜNÜN YEMEĞİ  =  "></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>

                </div>
            </ItemTemplate>

        </asp:DataList>



    </asp:Panel>
</asp:Content>

