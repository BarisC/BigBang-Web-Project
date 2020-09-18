<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BigBang_original.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>login</title>
</head>
<body>
    <form id="form1" runat="server">
        <link href="style.css" rel="stylesheet" />
        <div class="container">
       <div class="hızlı-kayıt">
                <div class="üst">
                   BİGBANG'E HOŞGELDİNİZ!
                </div>
                <div class="alt">

                    <div class="kAd">
                    <span>Kullanıcı Adı</span>
                    <asp:TextBox ID="textkAd" CssClass="textkAd" runat="server" OnTextChanged="textkAd_TextChanged"/>
                    </div>

                    <div class="sifre">
                    <span>Şifre</span>
                    <asp:TextBox ID="textsifre" CssClass="textsifre" runat="server" TextMode="Password"/>
                    </div>

                     <asp:Button ID="btnKayıt" CssClass="btnKayıt" runat="server" Text="Kaydol" OnClick= "btnKayıt_Click"/>
                     <asp:Button ID="btnGiris" CssClass="btnGiris" runat="server" Text="Giris" OnClick= "btnGiris_Click"/>
                     <asp:Label ID="lblSonuc" Text="" runat="server" />
                     <asp:Label ID="lblkyt" CssClass="lblkyt" Text="Hesabınız yok mu?" runat="server"/>
                </div>
           </div>

            </div>
    </form>
</body>
</html>
