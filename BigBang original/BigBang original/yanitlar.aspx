<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yanitlar.aspx.cs" Inherits="BigBang_original.yanıtla" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BigBang</title>
     <link href="style.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style4 {
            width: 100%;
            border-collapse: collapse;
            border: 2px solid #000000;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            height: 35px;
        }
        .auto-style6 {
            height: 31px;
        }
        .auto-style7 {
            margin-right: 301;
            margin-top: 35;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
       
    <div id="wrapper">
        
       <header>
            <div class="logo">
               BİGBANG
            </div>
            <nav>
                <ul>
                    <li>
                        <a href="default.aspx">Anasayfa</a>
                      
                    </li> 
                    <li>
                        <a href="yanitlar.aspx">Yanıtlar</a>
                    </li>
                   

                      <li>
                        <a href="profil.aspx">Profil</a>
                      
                    </li>
                     <li>
                        <a href="default.aspx">Bildirimler</a>
                      
                    </li>
                    
                </ul>
            </nav>
            <div class="arama-wrap" >
                <asp:TextBox ID="txtArama" CssClass="txtArama" runat="server" placeholder="arama"/>
                <asp:Button ID="btnArama"  CssClass="btnArama" runat="server" Text="ara" OnClick="btnArama_Click" />
                <asp:Button ID="btnSoru" CssClass="btnSoru" runat="server" Text="Soru Sor" Onclick="btnSoru_Click"/>
            </div>
        </header>

        <div class="banner">
        Merak Ettiğin Her Şey İçin Big Bang!
        </div>

       
        <div class="icerik">
       
            <br />
            <br />
        </div>

    
    </div>
    </form>
</body>
</html>
