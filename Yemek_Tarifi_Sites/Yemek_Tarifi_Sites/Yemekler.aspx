<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>




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
                    <div>
                        <a href="Yemekler.aspx?Yemekid=<%# Eval("Yemekid") %>&islem=sil">
                            <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" /></a>

                        <a href="YemekDüzenle.aspx?Yemekid=<%# Eval("Yemekid") %>">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/reflesh.png" /></a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" BackColor="#cccccc" runat="server">
        <div>
            <div class="baslik">
                YEMEK EKLE
            </div>
            <div class="ekle">
                <div>Yemek Ad:</div>
                <div>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="ekle">
                <div>Malzemeler:</div>
                <div>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>

            <div class="ekle">
                <div>Yemek Tarifi:</div>
                <div>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </div>
            </div>


            <div class="ekle">
                <div>Kategori:</div>
                <div>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                </div>
            </div>


            <div>

                <div>
                    <asp:Button ID="Button1" runat="server" Text="Ekle" OnClick="Button1_Click" CssClass="button-ekle" />
                </div>
            </div>
        </div>
    </asp:Panel>

</asp:Content>




