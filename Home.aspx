<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" MasterPageFile="~/Site.master" %>


<asp:Content ID="HeaderContent"  runat="server" ContentPlaceHolderID="HeaderContent"></asp:Content>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">

    <div id="home" runat="server" style="text-align:center">
            <asp:Image ID="Image1" runat="server" ImageUrl="open-book.jpg" ImageAlign="top" Height="250" Width="750" />
        <br />
           
       <br />
           <p> <span style="text-align:left">This is the Book Store home page</span></p>
            <hr />
            <asp:HyperLink ID="hyperlink3" NavigateUrl="http://www.cnn.com" Text="Contact Us" runat="server"  >Contact Us</asp:HyperLink>
            <asp:HyperLink ID="hyperlink4" NavigateUrl="http://www.google.com" Text="FAQ" runat="server">FAQ</asp:HyperLink>
            <asp:HyperLink ID="hyperlink5" NavigateUrl="http://www.reuters.com" Text="Privacy Policy" runat="server"  >Privacy Policy</asp:HyperLink>
            
       
        </div>

</asp:Content>
