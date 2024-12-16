<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    
        <div style="color:white">

            <div class="baslik">
                <asp:Label ID="Label3" runat="server" Text="ONAYLANMAYAN YORUM LİSTESİ"></asp:Label>
            </div>
            <div style="display: flex">
                <div style="width: 90px; text-align: right;">
                    Ad Soyad:
                </div>
                <div>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <div style="display: flex">
                <div style="width: 90px; text-align: right;">Mail Adresi:</div>
                <div>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <div style="display: flex">
                <div style="width: 90px; text-align: right;">İçerik:</div>
                <div>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <div style="display: flex">
                <div style="width: 90px; text-align: right;">Yemek:</div>
                <div>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <div style="width: 450px; height: 30px; font-size: 18px; font-weight: bold; cursor: pointer;">
                <asp:Button ID="Button1" runat="server" Text="Onayla" OnClick="Button1_Click"  Height="30px" Width="450px" />
            </div>
        </div>
       
</asp:Content>

