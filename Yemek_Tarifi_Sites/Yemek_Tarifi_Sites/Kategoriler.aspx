<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel runat="server" ID="Panel1">
        <asp:Label ID="Label2" runat="server" Text="KATEGORİLERİ DÜZENLE/SİL" CssClass="baslik"></asp:Label>
    </asp:Panel>
    <asp:Panel runat="server" ID="Panel2">
        <asp:DataList runat="server" ID="DataList1">
            <ItemTemplate>
                <div class="a3">
                    <asp:Label runat="server" ID="Label1" Text='<%# Eval("KategoriAd") %>'></asp:Label>

                    <div>
                        <a href="Kategoriler.aspx?Kategoriid=<%# Eval("Kategoriid") %>&islem=sil">
                            <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" /></a>

                        <a href="KategoriAdminDetay.aspx?Kategoriid=<%# Eval("Kategoriid") %>">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/reflesh.png" /></a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" BackColor="#cccccc" runat="server">
        <div>
            <div>
                <div class="baslik">KATEGORİ EKLE</div>
            </div>

            <div class="ekle">
                <div>Kategori Ad:</div>
                <div>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="ekle">
                <div>Kategori İcon:</div>
                <div>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="180px"/>
                </div>

            </div>
            <div>
                <asp:Button ID="Button1" runat="server" Text="Ekle" OnClick="Button1_Click" CssClass="button-ekle" />
            </div>
            </div>
    </asp:Panel>

</asp:Content>

