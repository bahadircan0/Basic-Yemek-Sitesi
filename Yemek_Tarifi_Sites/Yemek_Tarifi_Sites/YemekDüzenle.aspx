<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDüzenle.aspx.cs" Inherits="YemekDüzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <div class="a2">
        <asp:Label ID="Label1" runat="server" Text="Yemek Ad:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    <div class="a2">
        <asp:Label ID="Label2" runat="server" Text="Malzemeler:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="300px" ></asp:TextBox>
    </div>
    <div class="a2">
        <asp:Label ID="Label3" runat="server" Text="Tarif:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </div>
    <div class="a2">
        <asp:Label ID="Label4" runat="server" Text="Kategori:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
    </div>
    <div class="a2">
    <asp:Label ID="Label5" runat="server" Text="Yemek Görüntü:"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
</div>
    <div >
        <asp:Button ID="Button1" runat="server" Text="Güncelle" OnClick="Button1_Click" CssClass="button-ekle" />
    </div>
    <div>
    <asp:Button ID="Button2" runat="server" Text="Günün Yemeği yap" OnClick="Button2_Click" CssClass="button-ekle" />
</div>


</asp:Content>

