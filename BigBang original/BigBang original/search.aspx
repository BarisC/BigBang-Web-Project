<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="BigBang_original.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BigBang</title>
     <link href="style.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            float: left;
            width: 250px;
            height: 337px;
            margin-top: 45px;
        }
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
            float: right;
            width: 800px;
            height: 824px;
            background-color: #fff;
            margin-top: 45px;
        }
        .auto-style8 {
            margin-left: 40px;
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

        <div class="auto-style1">
        
                
            <asp:SqlDataSource ID="anasayfasorular" runat="server" ConnectionString="<%$ ConnectionStrings:QuaraConnectionString2 %>" SelectCommand="SELECT [qtitle], [username], [cname] FROM [question]"></asp:SqlDataSource>
            &nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" BackColor="White" Font-Size="X-Large" Text="GÜNCEL SORULAR"></asp:Label>
&nbsp;<asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="qtitle" DataSourceID="anasayfasorular" ForeColor="#333333" GridLines="None" Height="359px" Width="247px" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="qtitle" ReadOnly="True" SortExpression="qtitle" />
                    <asp:BoundField DataField="username" SortExpression="username" />
                    <asp:BoundField DataField="cname" SortExpression="cname" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <EmptyDataTemplate>
                    <asp:Label ID="Label4" runat="server" BackColor="White" ForeColor="Black" Text="KATEGORİ İSMİ"></asp:Label>
                    <asp:Label ID="Label5" runat="server" BackColor="White" ForeColor="Black" Text="KULLANICI"></asp:Label>
                    <br />
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style6" >[qtitle]</td>
                        </tr>
                        <tr>
                            <td class="auto-style5"  >[username]</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        
                
        </div>
      
       
        <div class="auto-style7">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Font-Size="X-Large" ForeColor="#000066" Text="İLGİLİ KELİME İLE BULUNAN KULLANICILAR"></asp:Label>
            <br />
            <br />
         <asp:DataList ID="DataList1" runat="server" DataKeyField="username" DataSourceID="aramakisiler" Width="795px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                   <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="aramakisiler" runat="server" ConnectionString="<%$ ConnectionStrings:QuaraConnectionString2 %>" SelectCommand="SELECT [username] FROM [members] WHERE ([username] LIKE '%' + @username + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label8" Name="username" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Font-Size="X-Large" ForeColor="#000066" Text="İLGİLİ KELİME İLE BULUNAN SORULAR"></asp:Label>
            <br />
            <br />
            <asp:DataList ID="DataList2" runat="server" DataKeyField="qtitle" DataSourceID="aramabulunansorular" Width="802px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
                <ItemTemplate>
                    <p class="auto-style8">
                        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="qtitleLabel" runat="server" Text='<%# Eval("qtitle") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="questiontextLabel" runat="server" Text='<%# Eval("questiontext") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
                        <br />
                        <br />
                    </p>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="aramabulunansorular" runat="server" ConnectionString="<%$ ConnectionStrings:QuaraConnectionString2 %>" SelectCommand="SELECT [qtitle], [questiontext], [cname] FROM [question] WHERE ([qtitle] LIKE '%' + @qtitle + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label8" Name="qtitle" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" ForeColor="White"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>

    
    </div>
    </form>
</body>
</html>
