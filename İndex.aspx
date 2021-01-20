<%@ Page Title="" Language="C#" MasterPageFile="~/Ana Sayfa.Master" AutoEventWireup="true" CodeBehind="İndex.aspx.cs" Inherits="E_Ticaret.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    html 
    {
            scroll-behavior: smooth;
    }

    #section1 
    {
    height: 700px;
    width:100%;
    
    }

    #section2 
    {
    height: 700px;
    width:100%;
    }

    .tablo1
    {
    width: 600px;
    height:450px;
    }
    #urun {
    border-collapse: collapse;
    width: 1200px;
    }
 
    #urun td, #urun th {
    border: 1px solid #ddd;
    padding: 10px;
    }
        .auto-style2 {
            width: 600px;
        }
        .auto-style3 {
            width: 600px;
        }
        .auto-style4 {
            width: 1200px;
        }
    </style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main" id="section1">
        <center>
            <p>
            <img alt="" class="auto-style1" src="Resimler/Logo.png" />
            </p>
            <table style="width: 1200px; height: 450px;">
             <tr>
                <td class="tablo1">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1500.7547851608354!2d32.65550186155099!3d41.210664605285935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x408354ac4492953f%3A0xab3b48ed0392a743!2sKarab%C3%BCk%20%C3%9Cniversitesi!5e0!3m2!1str!2str!4v1609761935212!5m2!1str!2str" 
                width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" ></iframe>
                </td>
                <td class="tablo1" style="background-color: #EAEAEA">
                    
                    <br />
                    İletişim Bilgileri<br />
                    Adres:Karabük Üniversitesi, Kastamonu Yolu Demir Çelik Kampüsü, 78050 Kılavuzlar/Karabük Merkez/Karabük<br />
                    Telefon Numarası:577 777 77 77<br />
                    <a href="mailto:Email:Estok@gmail.com">Email:Estok@gmail.com</a><br />
                    <br />
                    <br />
                    <button onclick="location.href='#section2'" type="button" class="auto-style2" style="width: 100px; height: 30px">Ürün Ekle</button>
                    <asp:Button ID="Button1" runat="server" Text="Listele" Height="30px" Width="100px" PostBackUrl="~/Liste.aspx" />
                 </td>
            </tr>
          </table>
        </center>
         
        
    </div>

    <div class="main" id="section2">
        <center>
        <h2 style="color: #CC0000; font-size: xx-large;">Ürün Kayıt Formu</h2>
        <br />
        <br />
        <br />

        <table id="urun" class="auto-style4">
        <tr>
        <td class="auto-style3"><a style="color: #FF0000">*</a>Ana Kategori:</td>
        <td class="auto-style2">
        <select name="AnaKategori" id="AnaKategori" style="width: 210px; height: 20px">
         <option value="Seçenek">Bir Seçenek Seçiniz...</option>
         <option value="İnşaat Malzemeleri">İnşaat Malzemeleri</option>
         <option value="Bilgisayar Donanımları">Bilgisayar Donanımları</option>
         <option value="Kırtasiye Malzemeleri">Kırtasiye Malzemeleri</option>
        </select></td>
        </tr>
        <tr>
        <td class="auto-style3"><a style="color: #FF0000">*</a>Alt Kategori:</td>
        <td class="auto-style2">
        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td class="auto-style3"><a style="color: #FF0000">*</a>Ürün Adı:</td>
        <td class="auto-style2">
        <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td class="auto-style3"><a style="color: #FF0000">*</a>Birim Fiyatı:</td>
        <td class="auto-style2">
        <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="200px"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td class="auto-style3"><a style="color: #FF0000">*</a>Ürün Adeti:</td>
        <td class="auto-style2">
        <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="200px"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td class="auto-style3"><a style="color: #FF0000">*</a>Tedarikçi Firmanın Adı:</td>
        <td class="auto-style2">
        <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="200px"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td class="auto-style3"><a style="color: #FF0000">*</a>Tedarikçi Telefonu:</td>
        <td class="auto-style2">
        <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="200px"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td class="auto-style3" ><a style="color: #FF0000">*</a>Tedarikçi Adresi:</td>
        <td class="auto-style2">
        <asp:TextBox ID="TextBox7" runat="server" Height="20px" Width="200px"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td class="auto-style3"><a style="color: #FF0000">*</a>Kaydeden Personelin İsmi/Soyismi: </td>
        <td class="auto-style2">
        <asp:TextBox ID="TextBox8" runat="server" Height="20px" Width="200px"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td class="auto-style3">Resim Ekleme</td>
        <td class="auto-style2">
            <asp:FileUpload ID="FileUpload1" runat="server" Height="20px" Width="200px" />
        </td>
        </tr>
        <tr>
        <td class="auto-style3">Açıklama:</td>
        <td class="auto-style2">
        <asp:TextBox ID="TextBox9" runat="server" Height="20px" Width="600px"></asp:TextBox>
        </td>
        </tr>
        </table>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kayıt" Height="30px" Width="100px" />
                    <button onclick="location.href='#section1'" type="button" class="auto-style2" style="width: 100px; height: 30px">Yukarı Çık</button>
        </center>
        </div>

</asp:Content>