<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BigBang_original._default" %>

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
                        <a href="profil.aspx">Profil</a>
                      
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" cssClass="lbl1" Text="Soru Başlığı Belirleyin : " Font-Size="Large" ForeColor="#000066"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="baslık" BorderColor="#000066" BorderStyle="Double" Height="43px" Width="557px" BackColor="Silver"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="#000066" Text="Soru kategorisini seç : "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="kategoriler" DataTextField="cname" DataValueField="cname" Height="21px" Width="132px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="kategoriler" runat="server" ConnectionString="<%$ ConnectionStrings:QuaraConnectionString2 %>" SelectCommand="SELECT [cname] FROM [category]"></asp:SqlDataSource>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="#000066" Text="Soru : "></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="#000066" BorderStyle="Double" Height="116px" Width="731px" BackColor="#CCCCCC"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Font-Size="X-Large" ForeColor="White" Height="41px" Text="SOR !" Width="182px" OnClick="Button1_Click1" BackColor="Green" />
            <br />
            <asp:SqlDataSource ID="tumsorular" runat="server" ConnectionString="<%$ ConnectionStrings:QuaraConnectionString2 %>" SelectCommand="SELECT [qtitle], [username], [questiontext] FROM [question]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="qtitle" DataSourceID="tumsorular" GridLines="Horizontal" Height="359px" Width="1103px" OnSelectedIndexChanged="yanitlagit" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CssClass="auto-style7" >
                <Columns>
                    <asp:BoundField DataField="qtitle" ReadOnly="True" SortExpression="qtitle" />
                    <asp:BoundField DataField="username" SortExpression="username" />
                    <asp:BoundField DataField="questiontext" SortExpression="questiontext" />
                    <asp:CommandField SelectText="Yanıtla" ShowSelectButton="True" />
                </Columns>
                <EmptyDataTemplate>
                    <asp:Label ID="Label4" runat="server" BackColor="White" ForeColor="Black" Text="KATEGORİ İSMİ"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" BackColor="White" ForeColor="Black" Text="KULLANICI"></asp:Label>
                    <br />
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [qtitle]&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [username]</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
        
                
            <br />
            <br />
        </div>

    
    </div>
    </form>
</body>
</html>
