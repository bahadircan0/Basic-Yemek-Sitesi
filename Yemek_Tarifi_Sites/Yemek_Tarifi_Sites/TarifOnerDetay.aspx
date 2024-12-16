<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
            <div style="display:flex" class="a2">
           Tarif Ad:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
       <div class="a2">
     Tarif Malzemeler:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</div>
        <div class="a2">
    Yapılış:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</div>
            <div class="a2">
    Tarif Resim:<asp:FileUpload ID="FileUpload1" runat="server" />
</div>
            <div class="a2">
    Tarif Öneren:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
</div>
            <div class="a2">
    Öneren Mail:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
</div>
                <div class="a2">
     Yemek Kategorisi:<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
</div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Onayla" OnClick="Button1_Click" CssClass="button-ekle" />
    </div>
</asp:Content>

