<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
   
    
    
    <asp:Label ID="Label1" runat="server" CssClass="baslik" ></asp:Label>
    <asp:DataList ID="DataList1" runat="server" CssClass="container2">
        <ItemTemplate>
            <div class="container2" style="width:440px">
            <div>
                <asp:Label ID="Label10" runat="server" Text='<%# Eval("YorumAdSoyad") %>' CssClass="a4"></asp:Label>
            </div>
            <div style="margin-bottom: 20px">-
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label><br />-Yorum Tarihi:
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
            </div>


            
            <asp:Panel ID="Panel1" runat="server"></asp:Panel>

                </div>
        </ItemTemplate>
    </asp:DataList>

    <div class="baslik">Yorum Yapma Paneli</div>
        <div class="tarifoner">
           Ad Soyad:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
       <div class="tarifoner">
     Mail:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</div>
        <div class="tarifoner">
    Yorum:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Yorum Yap" OnClick="Button1_Click" CssClass="button-ekle" />
    </div>
    

</asp:Content>

