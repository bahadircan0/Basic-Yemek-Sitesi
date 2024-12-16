<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriAdminDetay.aspx.cs" Inherits="KategoriAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <div>
        <asp:Label ID="Label1" runat="server" Text="Kategori Düzenle" CssClass="baslik"></asp:Label></div>

    <div class="a2">
        <div>
            Kategori Ad:
        </div>
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
    </div>
    
    <div class="a2">
    <div>
        Adet:
    </div>
    <div>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </div>
</div>
    
    <div class="a2">
    <div>
        Resim:
    </div>
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </div>
</div>

    <div>
    
    <div>
        <asp:Button ID="Button1" runat="server" Text="Güncelle"  CssClass="button-ekle"  OnClick="Button1_Click"/>
    </div>
</div>
</asp:Content>

