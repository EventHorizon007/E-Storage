<%@ Page Title="" Language="C#" MasterPageFile="~/Ana Sayfa.Master" AutoEventWireup="true" CodeBehind="Liste.aspx.cs" Inherits="E_Ticaret.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
    .tablo1
    {
    width: 100px;
    height:100px;
    
    }
       .auto-style2 {
           width: 1000px;
           height: 200px;
       }
       .auto-style3 {
           width: 200px;
           height: 200px;
       }
       .auto-style4 {
           height: 100px;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <center>
            <p>
            <img alt="" class="auto-style1" src="Resimler/Logo.png" />
            </p>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" Width="250px" Height="50px">
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <table style="width: 1200px; height: 200px;">
            <tr>
            <td class="auto-style2">
            <table style="width: 1000px; height: 200px;">
            <tr>
            <td class="tablo1" aria-expanded="undefined">
                <textarea id="TextArea1" runat="server" cols="20" name="S1" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1">  
                <textarea id="TextArea2" runat="server" cols="20" name="S2" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1">
                <textarea id="TextArea3" runat="server" cols="20" name="S3" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1">  
                <textarea id="TextArea4" runat="server" cols="20" name="S4" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1">
                <textarea id="TextArea5" runat="server" cols="20" name="S5" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1">  
                <textarea id="TextArea6" runat="server" cols="20" name="S6" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1">
                <textarea id="TextArea7" runat="server" cols="20" name="S7" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1">  
                <textarea id="TextArea8" runat="server" cols="20" name="S8" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1">
                <textarea id="TextArea9" runat="server" cols="20" name="S9" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1">  
                <textarea id="TextArea10" runat="server" cols="20" name="S10" rows="2" style="width: 100px; height: 100px"></textarea></td>
            </tr>

            <tr>
            <td class="tablo1" style="width: 100px">
                &nbsp;</td>
            <td class="tablo1" >  
                &nbsp;</td>
            <td class="tablo1">
            </td>
            <td class="tablo1">  
            </td>
            <td class="tablo1">
            </td>
            <td class="tablo1">  
            </td>
            <td class="auto-style4" aria-multiline="False" colspan="2">
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/İndex.aspx" Text="Ana Sayfaya Geri Dön" />
            </td>
            <td class="tablo1">
            </td>
            <td class="tablo1">  
            </td>
            </tr>
            </table>
            </td>
            <td class="auto-style3">
                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" />
            </td>
            </tr>
            </table>
            </center>
</asp:Content>
