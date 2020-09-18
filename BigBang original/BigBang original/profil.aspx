<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="BigBang_original.profil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bigbang</title>
    <link href="style.css" rel="stylesheet" />
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
                <asp:Button ID="btnArama"  CssClass="btnArama" runat="server" Text="ara" OnClick="btnArama_Click" />
                <asp:Button ID="btnSoru" CssClass="btnSoru" runat="server" Text="Soru Sor" onClick="btnSoru_Click"/>
            </div>
        </header>

        <div class="sol">
            <div class="foto">

            </div>
            <div class="bilgi">
                <asp:Label ID="kuladı" runat="server" Text="Kullanıcı Adı:"></asp:Label>  <asp:Label ID="usernamelabel" runat="server" Text="" ></asp:Label><br />
            </div>
            <div class="secenek">
                <asp:LinkButton ID="sorularin" runat="server" Text="Soruların" OnClick="sorularin_Click"></asp:LinkButton> <br />
                <asp:LinkButton ID="yanitların" runat="server" Text="Yanıtların" OnClick="yanitların_Click"></asp:LinkButton> <br />
                <asp:LinkButton ID="takipciler" runat="server" Text="Takipçiler" OnClick="takipciler_Click"></asp:LinkButton> <br />
                <asp:LinkButton ID="follow" runat="server" Text="Takipler" OnClick="follow_Click"></asp:LinkButton> <br />
            </div>
           <div class="takip">
               <asp:Button ID="btntakip" Cssclass="btntakip" runat="server" Text="Takip Et!" OnClick="btntakip_Click" />
           </div>
          
        </div >
           
        <div class="sağ">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="BİLGİLERİM"></asp:Label>
            <br />
&nbsp;<asp:DataList ID="DataList1" runat="server" DataSourceID="profilverisi">
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="memberfnameLabel" runat="server" Font-Size="Large" Text='<%# Eval("memberfname") %>' />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="memberlnameLabel" runat="server" Font-Size="Large" Text='<%# Eval("memberlname") %>' />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="emailLabel" runat="server" Font-Size="Large" Text='<%# Eval("email") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="profilverisi" runat="server" ConnectionString="<%$ ConnectionStrings:QuaraConnectionString2 %>" SelectCommand="SELECT [memberfname], [memberlname], [email] FROM [members] WHERE ([username] = @username)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="usernamelabel" Name="username" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
            

    
    </div>
    </form>
</body>
</html>
