<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profil.soru.aspx.cs" Inherits="BigBang_original.profil_soru" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>BİGBANG</title>
    <link href="style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #000080;
        }
        .auto-style9 {
            width: 114px;
            height: 50px;
        }
        .auto-style10 {
            height: 50px;
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
                <asp:Label ID="kuladı" runat="server" Text="Kullanıcı Adı:"></asp:Label>  <asp:Label ID="usernamelabel2" runat="server" Text="" ></asp:Label><br />
            </div>
            <div class="secenek">
                <asp:LinkButton ID="sorularin" runat="server" Text="Soruların"></asp:LinkButton> <br />
                <asp:LinkButton ID="yanitların" runat="server" Text="Yanıtların" OnClick="yanitların_Click"></asp:LinkButton> <br />
                <asp:LinkButton ID="takipciler" runat="server" Text="Takipçiler" OnClick="takipciler_Click"></asp:LinkButton> <br />
                <asp:LinkButton ID="follow" runat="server" Text="Takipler" OnClick="follow_Click"></asp:LinkButton> <br />
            </div>
           <div class="takip">
               <asp:Button ID="btntakip" Cssclass="btntakip" runat="server" Text="Takip Et!" />
           </div>
          
        </div >
               <div class="sağ">
                  
                   <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="#660066" Text="SORULARIM"></asp:Label>
                   <br />
                  
                   <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="696px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                       <AlternatingItemStyle BackColor="#CCCCCC" />
                       <FooterStyle BackColor="#CCCCCC" />
                       <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                       <ItemTemplate>
                           <table class="auto-style1">
                               <tr>
                                   <td class="auto-style9">BAŞLIK :</td>
                                   <td class="auto-style10">
                                       <asp:Label ID="qtitleLabel" runat="server" Text='<%# Eval("qtitle") %>' />
                                   </td>
                               </tr>
                               <tr>
                                   <td class="auto-style9">KULLANICI : </td>
                                   <td class="auto-style10">
                                       <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                   </td>
                               </tr>
                               <tr>
                                   <td class="auto-style9">KATEGORİ</td>
                                   <td class="auto-style10">
                                       <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
                                   </td>
                               </tr>
                               <tr>
                                   <td class="auto-style9">SORU : </td>
                                   <td class="auto-style10">
                                       <asp:Label ID="questiontextLabel" runat="server" Text='<%# Eval("questiontext") %>' />
                                   </td>
                               </tr>
                           </table>
<br />
                       </ItemTemplate>
                       <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                   </asp:DataList>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuaraConnectionString %>" SelectCommand="SELECT [qtitle], [username], [cname], [questiontext] FROM [question] WHERE ([username] = @username)">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="usernamelabel2" Name="username" PropertyName="Text" Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                  
               </div>
              </div>
    </form>
</body>
</html>
