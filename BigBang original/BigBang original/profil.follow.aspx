<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profil.follow.aspx.cs" Inherits="BigBang_original.profil_follow" %>

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
                <asp:Button ID="btnArama"  CssClass="btnArama" runat="server" Text="ara" />
                <asp:Button ID="btnSoru" CssClass="btnSoru" runat="server" Text="Soru Sor" onClick="btnSoru_Click"/>
            </div>
        </header>

        <div class="sol">
            <div class="foto">

            </div>
            <div class="bilgi">
                <asp:Label ID="kuladı" runat="server" Text="Kullanıcı Adı:"></asp:Label>  <asp:Label ID="usernamelabel5" runat="server" Text="" ></asp:Label><br />
            </div>
            <div class="secenek">
                <asp:LinkButton ID="sorularin" runat="server" Text="Soruların" OnClick="sorularin_Click"></asp:LinkButton> <br />
                <asp:LinkButton ID="yanitların" runat="server" Text="Yanıtların" OnClick="yanitların_Click" ></asp:LinkButton> <br />
                <asp:LinkButton ID="takipciler" runat="server" Text="Takipçiler" OnClick="takipciler_Click" ></asp:LinkButton> <br />
                <asp:LinkButton ID="follow" runat="server" Text="Takipler"></asp:LinkButton> <br />
            </div>
           <div class="takip">
               <asp:Button ID="btntakip" Cssclass="btntakip" runat="server" Text="Takip Et!" />
           </div>
          
        </div >
               <div class="sağ">

                   <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="DarkBlue" Text="TAKİP EDİLENLER"></asp:Label>
                   <br />
                   <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" Font-Size="XX-Large" ForeColor="Red" Width="72px" style="margin-left: 343px">
                       <Columns>
                           <asp:BoundField DataField="follow" SortExpression="follow" />
                       </Columns>
                       <EmptyDataTemplate>
                           &nbsp;
                       </EmptyDataTemplate>
                   </asp:GridView>
                   &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuaraConnectionString2 %>" SelectCommand="SELECT [follow] FROM [follow] WHERE ([followers] = @followers)">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="usernamelabel5" Name="followers" PropertyName="Text" Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>

                   </div>
              </div>
    </form>
</body>
</html>
