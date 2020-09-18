<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="BigBang_original.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <link href="style.css" rel="stylesheet" />
        <div class="container2">
       <div class="hızlı-kayıt2">
                <div class="üst2">
                   BİGBANG'E HOŞGELDİNİZ!
                </div>
                <div class="alt2">
                    <div class="ad2">
                    <span>Ad</span>
                    <asp:TextBox ID="nametxt" CssClass="textad2" runat="server"/>
                    </div>

                    <div class="soyad2">
                     <span>Soyad</span>
                    <asp:TextBox ID="surnametxt" CssClass="textsoyad2" runat="server"/>
                    </div>

                    <div class="kAd2">
                    <span>Kullanıcı Adı</span>
                    <asp:TextBox ID="usernametxt" CssClass="textkAd2" runat="server"/>
                    </div>

                    <div class="mail2">
                    <span>e-mail</span>
                    <asp:TextBox ID="emailtxt" CssClass="textmail2" runat="server" BorderColor="Black"/>
                    </div>

                    <div class="sifre2">
                    <span>Şifre</span>
                    <asp:TextBox ID="passtxt" CssClass="textsifre2" runat="server"/>
                    </div>
                    

                    <div class="kategori">
                         <asp:Label ID="Label1" CssClass="lblsec" runat="server" Text="İLGİ ALANLARINIZI SEÇİN!"></asp:Label>  <br />
                         <asp:CheckBox ID="CheckBox1"  CssClass="checkbox" runat="server" Text="TEKNOLOJİ" /> <br />
                         <asp:CheckBox ID="CheckBox2" CssClass="checkbox" runat="server" Text="MATEMATİK" /> <br />
                         <asp:CheckBox ID="CheckBox3" CssClass="checkbox" runat="server" Text="BİLİM" /> <br />
                         <asp:CheckBox ID="CheckBox4" CssClass="checkbox" runat="server" Text="EĞİTİM" /> <br />
                         <asp:CheckBox ID="CheckBox5" CssClass="checkbox" runat="server" Text="SPOR" /> <br />
                         <asp:CheckBox ID="CheckBox6" CssClass="checkbox" runat="server" Text="SAĞLIK" /> <br />
                         <asp:CheckBox ID="CheckBox7" CssClass="checkbox" runat="server" Text="SİYASET" /> <br />
                         <asp:CheckBox ID="CheckBox8" CssClass="checkbox" runat="server" Text="DONANIM" /> <br />
                         <asp:CheckBox ID="CheckBox9" CssClass="checkbox" runat="server" Text="YAZILIM" /> <br />
                         <asp:CheckBox ID="CheckBox10" CssClass="checkbox" runat="server" Text="PROGRAMLAMA" /> <br /> 
                        
                    </div>
                  
                     <asp:Button ID="btnKayıt2" CssClass="btnKayıt2" runat="server" Text="Kaydol" OnClick="btnKayıt2_Click"/>
                     <asp:Label ID="lbl2" Text="" runat="server" />
                    
           </div>
           </div>
           </div>
    </form>
</body>
</html>
