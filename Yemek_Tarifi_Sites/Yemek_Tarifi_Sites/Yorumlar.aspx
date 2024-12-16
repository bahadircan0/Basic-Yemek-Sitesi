<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div >
        <asp:Panel runat="server" ID="Panel1">
            <div style="background-color: #1f1f1f; color: white; display: flex; padding: 5px; width: 450px; box-sizing: border-box; text-align: center; justify-content: center;">
                <asp:Label ID="Label2" runat="server" Text="ONAYLANAN YORUM LİSTESİ"></asp:Label>
            </div>
        </asp:Panel>
        <asp:Panel runat="server" ID="Panel2">
            <asp:DataList runat="server" ID="DataList1">
                <ItemTemplate>
                    <div class="a3">
                        <asp:Label runat="server" ID="Label1" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        <div>
                            <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Resimler/delete.png" Height="30px" /></a>

                            <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/reflesh.png" /></a>
                        </div>


                    </div>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>




        <asp:Panel runat="server" ID="Panel3">
            <div class="baslik">
                <asp:Label ID="Label3" runat="server" Text="ONAYLANMAYAN YORUM LİSTESİ"></asp:Label>
            </div>
        </asp:Panel>
        <asp:Panel runat="server" ID="Panel4">
            <asp:DataList runat="server" ID="DataList2">
                <ItemTemplate>
                    <div class="a3">
                        <asp:Label runat="server" ID="Label2" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>



                        <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Resimler/Document.png" CssClass="yorumlar-cont" /></a>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </div>
</asp:Content>

