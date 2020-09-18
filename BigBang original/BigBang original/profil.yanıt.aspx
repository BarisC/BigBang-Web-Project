<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profil.yanıt.aspx.cs" Inherits="BigBang_original.profil_yanıt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>BİGBANG</title>
    <link href="style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 95;
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
                        <a href="default.aspx">Profil</a>
                      
                    </li>
                    

                </ul>
            </nav>
            <div class="arama-wrap" >
                <asp:TextBox ID="txtArama" CssClass="txtArama" runat="server" placeholder="arama"/>
                <asp:Button ID="btnArama"  CssClass="btnArama" runat="server" Text="ara" />
                <asp:Button ID="btnSoru" CssClass="btnSoru" runat="server" Text="Soru Sor" onClick="btnSoru_Click"/>
            </div>
        </header>

        <div class="sol">
            <div class="foto">

            </div>
            <div class="bilgi">
                <asp:Label ID="kuladı" runat="server" Text="Kullanıcı Adı:"></asp:Label>  <asp:Label ID="usernamelabel3" runat="server" Text=""></asp:Label><br />
            </div>
            <div class="secenek">
                <asp:LinkButton ID="sorularin" runat="server" Text="Soruların" OnClick="sorularin_Click" ></asp:LinkButton> <br />
                <asp:LinkButton ID="yanitların" runat="server" Text="Yanıtların" ></asp:LinkButton> <br />
                <asp:LinkButton ID="takipciler" runat="server" Text="Takipçiler" OnClick="takipciler_Click" ></asp:LinkButton> <br />
                <asp:LinkButton ID="follow" runat="server" Text="Takipler" OnClick="follow_Click" ></asp:LinkButton> <br />
            </div>
           <div class="takip">
               <asp:Button ID="btntakip" Cssclass="btntakip" runat="server" Text="Takip Et!" />
           </div>
          
        </div >
               <div class="sağ">

                   <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="#660066" Text="CEVAP VERDİĞİN SORULAR"></asp:Label>
                   <br />
                   <br />
                   <br />

                   <asp:DataList ID="DataList1" runat="server" DataSourceID="gelencevaplar" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CellSpacing="2" CssClass="auto-style1" Width="639px" BorderStyle="Solid" ForeColor="Black" GridLines="Both">
                       <FooterStyle BackColor="#CCCCCC" />
                       <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                       <ItemStyle BackColor="White" />
                       <ItemTemplate>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                           <br />
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Label ID="qtitleLabel" runat="server" Text='<%# Eval("qtitle") %>' />
                           <br />
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Label ID="answertextLabel" runat="server" Text='<%# Eval("answertext") %>' />
                           <br />
                           <br />
                       </ItemTemplate>
                       <SelectedItemStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
                   </asp:DataList>
                   <asp:SqlDataSource ID="gelencevaplar" runat="server" ConnectionString="<%$ ConnectionStrings:QuaraConnectionString2 %>" SelectCommand="SELECT [username], [qtitle], [answertext] FROM [answer] WHERE ([username] = @username)">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="usernamelabel3" Name="username" PropertyName="Text" Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>

                   </div>
              </div>
    </form>
</body>
</html>
