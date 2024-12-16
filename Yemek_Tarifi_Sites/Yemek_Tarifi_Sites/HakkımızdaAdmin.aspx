<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkımızdaAdmin.aspx.cs" Inherits="HakkımızdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <asp:Panel runat="server" ID="Panel1">
      <asp:Label ID="Label2" runat="server" Text="HAKKIMIZDA" CssClass="baslik"></asp:Label>
  </asp:Panel>
  <asp:Panel runat="server" ID="Panel2">
      <asp:TextBox ID="TextBox1" runat="server" Width="440px" TextMode="MultiLine" Height="400px"></asp:TextBox>
      <br />
      <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="button-ekle"  OnClick="Button1_"/>
  </asp:Panel>
</asp:Content>

