<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Arkopa_Web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div class="col-md-4" style="top: -100px" >
            <table border="1">
<tr>
    <th style="width: 150px; height: 80px;">Vardiya</th>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox1" runat="server" Width="130px"></asp:TextBox>
    </td>     
    <th style="width: 150px; height: 80px;">Tarih</th>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox5" runat="server" Width="130px"></asp:TextBox>
    </td> 
    <th style="width: 150px; height: 80px;">Makine Adi</th>
</tr> 
<tr>
    <th style="width: 150px; height: 80px;">Vardiya Suresi (dk)</th>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>    
    <th style="width: 150px; height: 80px;">Kullanilabilirlik Degeri</th>
    <td id="input1" style="width: 150px; height: 80px;">
        <asp:Label ID="Label10" runat="server" Width="100px"></asp:Label>
    </td> 
    <td rowspan="4" style="width: 150px;">
        <asp:ListBox ID="ListBox1" runat="server" Height="300px" Width="130px">
            <asp:ListItem>a</asp:ListItem>
            <asp:ListItem>b</asp:ListItem>
            <asp:ListItem>c</asp:ListItem>
            <asp:ListItem>d</asp:ListItem>
            <asp:ListItem>e</asp:ListItem>
            <asp:ListItem>f</asp:ListItem>
        </asp:ListBox>
    </td>
</tr> 
<tr>
    <th style="width: 150px; height: 80px;">Molalar (dk)</th>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>    
    <th style="width: 150px; height: 80px;">Ortalama Kalite Degeri</th>
    <td style="width: 150px; height: 80px;">
        <asp:Label ID="Label11" runat="server" Width="100px"></asp:Label>
    </td> 
</tr> 
<tr>
    <th style="width: 150px; height: 80px;">Net Calisma Suresi (dk)</th>
    <td style="width: 150px; height: 80px;">
        <asp:Label ID="Label9" runat="server" Width="100px"></asp:Label>
    </td>    
    <th style="width: 150px; height: 80px;">Performans Degeri</th>
    <td style="width: 150px; height: 80px;">
        <asp:Label ID="Label12" runat="server" Width="100px"></asp:Label>
    </td> 
</tr> 
<tr>
    <th style="width: 150px; height: 80px;">Duruslar (dk)</th>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>    
    <th style="width: 150px; height: 80px;">OEE</th>
    <td style="width: 150px; height: 80px;">
        <asp:Label ID="Label13" runat="server" Width="100px"></asp:Label>
    </td> 
</tr> 
</table>
        </div>   
            <div class="col-md-4" style="top: -200px; left: -200px;">
            <table border="1">
<tr>
    <th style="width: 150px; height: 80px;">Urun Tanimi</th>
    <th style="width: 150px; height: 80px;">Uretilmesi Gereken Yuzey Adedi</th>
    <th style="width: 150px; height: 80px;">Uretim Suresi (sn)</th>
    <th style="width: 150px; height: 80px;">Toplam Saglam Uretilen Miktar</th>
    <th style="width: 150px; height: 80px;">Hatali Miktar</th>
    <th style="width: 150px; height: 80px;">Tip Degisim Suresi (dk)</th>
    <th style="width: 150px; height: 80px;">Cevrim Suresi (sn)</th>
    <th style="width: 150px; height: 80px;">Kalite Degeri</th>
</tr> 
<tr>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox6" runat="server" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox7" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox8" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox9" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox10" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox11" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:Label ID="Label1" runat="server" Width="100px"></asp:Label>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:Label ID="Label2" runat="server" Width="100px"></asp:Label>
    </td>
</tr>
<tr>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox12" runat="server" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox13" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox14" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox15" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox16" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox17" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:Label ID="Label3" runat="server" Width="100px"></asp:Label>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:Label ID="Label4" runat="server" Width="100px"></asp:Label>
    </td>
</tr>
<tr>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox18" runat="server" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox19" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox20" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox21" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox22" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox23" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:Label ID="Label5" runat="server" Width="100px"></asp:Label>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:Label ID="Label6" runat="server" Width="100px"></asp:Label>
    </td>
</tr>
<tr>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox24" runat="server" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox25" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox26" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox27" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox28" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:TextBox ID="TextBox29" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:Label ID="Label7" runat="server" Width="100px"></asp:Label>
    </td>
    <td style="width: 150px; height: 80px;">
        <asp:Label ID="Label8" runat="server" Width="100px"></asp:Label>
    </td>
</tr>
</table>
         </div>
         <div class="col-md-4" style="top: -300px; width: 200px; height: 70px; left: 100px;" >
             <asp:Button ID="Button1" runat="server" CssClass="button-2" Height="70px" OnClick="Button1_Click" Text="HESAPLA" Width="200px" />
         </div>
         <div class="col-md-4" style="top: -372px; width: 200px; height: 70px; left: 391px;" >
             <asp:Button ID="Button2" runat="server" CssClass="button-2" Height="70px" OnClick="Button2_Click" Text="KAYDET" Width="200px" />
         </div>

    </asp:Content>
