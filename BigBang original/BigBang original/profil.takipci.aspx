<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profil.takipci.aspx.cs" Inherits="BigBang_original.profil_takipci" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>BİGBANG</title>
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
                <asp:Label ID="kuladı" runat="server" Text="Kullanıcı Adı:"></asp:Label>  <asp:Label ID="usernamelabel4" runat="server" Text=""></asp:Label><br />
            </div>
            <div class="secenek">
                <asp:LinkButton ID="sorularin" runat="server" Text="Soruların" OnClick="sorularin_Click" ></asp:LinkButton> <br />
                <asp:LinkButton ID="yanitların" runat="server" Text="Yanıtların" OnClick="yanitların_Click"></asp:LinkButton> <br />
                <asp:LinkButton ID="takipciler" runat="server" Text="Takipçiler" ></asp:LinkButton> <br />
                <asp:LinkButton ID="follow" runat="server" Text="Takipler" OnClick="follow_Click" ></asp:LinkButton> <br />
            </div>
           <div class="takip">
               <asp:Button ID="btntakip" Cssclass="btntakip" runat="server" Text="Takip Et!" />
           </div>
          
        </div >
               <div class="sağ">

                   <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="#660066" Text="TAKİPÇİLER"></asp:Label>
                   <br />
                   <br />

                   <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="takipci" ForeColor="Black" GridLines="Horizontal">
                       <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                       <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                       <ItemTemplate>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                           <asp:Label ID="followersLabel" runat="server" Font-Size="XX-Large" ForeColor="#CC0000" Text='<%# Eval("followers") %>' />
                           <br />
<br />
                       </ItemTemplate>
                       <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                   </asp:DataList>
                   <asp:SqlDataSource ID="takipci" runat="server" ConnectionString="<%$ ConnectionStrings:QuaraConnectionString2 %>" SelectCommand="SELECT [followers] FROM [follow] WHERE ([follow] = @follow)">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="usernamelabel4" Name="follow" PropertyName="Text" Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>

                   </div>
              </div>
    </form>
</body>
</html>
