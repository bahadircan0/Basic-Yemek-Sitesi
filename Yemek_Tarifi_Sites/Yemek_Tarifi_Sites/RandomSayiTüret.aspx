<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="RandomSayiTüret.aspx.cs" Inherits="RandomSayiTüret" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div>
         <asp:Label ID="Label1" runat="server" Text="Random Sayı Üret" ForeColor="White"></asp:Label> 
         <br />
         <asp:Label ID="Label2" runat="server" Text="Random Sayi=" ForeColor="White"></asp:Label>
         <asp:Label ID="Label3" runat="server"  ForeColor="White"></asp:Label>
         <br />
         <asp:Button ID="Button1" runat="server" Text="Üret" Width="100%" OnClick="Button1_Click"/>
     </div>
</asp:Content>

