<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel runat="server" ID="Panel1">
        <asp:Label ID="Label2" runat="server" Text="MESAJ LİSTESİ" class="baslik" ></asp:Label>
    </asp:Panel>
    <asp:Panel runat="server" ID="Panel2">
        <asp:DataList runat="server" ID="DataList1">
            <itemtemplate>
                <div class="ekle-a">

                    <div style="">
                        <asp:Label runat="server" ID="Label1" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                    </div>

                    <div>
                        <a href="MesajDetay.aspx?Mesajid=<%# Eval("Mesajid") %>">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/Read.png" />
                        </a>
                    </div>


                </div>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>


</asp:Content>

