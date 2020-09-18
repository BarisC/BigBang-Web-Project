<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="answerpage.aspx.cs" Inherits="BigBang_original.answerpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BigBang</title>
     <link href="style.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            float: right;
            width: 1097px;
            height: 611px;
            background-color: #fff;
            margin-top: 45px;
            margin-left: 0px;
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
                <asp:Button ID="btnSoru" CssClass="btnSoru" runat="server" Text="Soru Sor" />
            </div>
        </header>

       
        <br />
        <br />
        <br />
        <br />
        <br />
      
       
        <div class="auto-style1">
            <asp:Label ID="gelentitle" runat="server" ForeColor="White"></asp:Label>
            <asp:Label ID="gelenusername" runat="server" ForeColor="White"></asp:Label>
            <asp:Label ID="string1" runat="server"></asp:Label>
            <asp:Label ID="string2" runat="server"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="qtitle" DataSourceID="answerpage2" ForeColor="Black" GridLines="None" Height="161px" Width="1098px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="qtitle" ReadOnly="True" SortExpression="qtitle" />
                    <asp:BoundField DataField="username" SortExpression="username" />
                    <asp:BoundField DataField="cname" SortExpression="cname" />
                    <asp:BoundField DataField="questiontext" SortExpression="questiontext" />
                </Columns>
                <EmptyDataTemplate>
                     BAŞLIK : [qtitle]
                     <br />
                     KULLANICI : [username]<br />KATEGORİ : [cname]<br />SORUSU : [questiontext]<br />
                    <br />

                </EmptyDataTemplate>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="answerpage2" runat="server" ConnectionString="<%$ ConnectionStrings:QuaraConnectionString2 %>" SelectCommand="SELECT [qtitle], [username], [cname], [questiontext] FROM [question] WHERE ([qtitle] = @qtitle)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gelentitle" Name="qtitle" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="#000066" Text="CEVABINIZ : "></asp:Label>
            &nbsp;<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="answertext" runat="server" BorderStyle="Double" Height="109px" Width="960px" BackColor="#CCCCCC"></asp:TextBox>
            <br />
            <br />
            <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="yanitlabutton" runat="server" BorderStyle="Double" Height="52px" OnClick="yanitlabutton_Click1" Text="YANITLA" Width="137px" BackColor="Green" ForeColor="White" />
            <br />
        </div>
        <br />
        <br />
        <br />
        </div>
    </form>
</body>
</html>
