<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Survey Summary.aspx.cs" Inherits="Survey_Summary" MasterPageFile="~/Site.master" %>

<asp:Content ID="HeaderContent"  runat="server" ContentPlaceHolderID="HeaderContent"></asp:Content>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
<asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>

      <div id="bookpicture" runat="server" style="text-align:center;">
            
             <asp:Image ID="Image1" runat="server" ImageUrl="open-book.jpg" ImageAlign="top" Height="250" Width="750" />
          <br />
          
          </div>
    <div id="bookstoresurvey" runat="server">
        <table>
            <tr>
    
               <td> <asp:Label ID="Label1" runat="server" Text="Label" CssClass="label">First Name: </asp:Label>
                </td>
                <td>
                   <asp:Label ID="FirstnameResult" runat="server" Text="Label"></asp:Label>
           </td>
                </tr>
            <tr>
                <td>
                 <asp:Label ID="Label2" runat="server" Text="Label" CssClass="label">Last Name: </asp:Label>
                    </td>
                <td>
                    <asp:Label ID="LastnameResult" runat="server" Text="Label"></asp:Label>

                </td>
               
            </tr>
            <tr>
              <td>
                   <asp:Label ID="Label3" runat="server" Text="Address" CssClass="label">Address: </asp:Label>
                  </td>
                <td>
                 <asp:Label ID="addressResult" runat="server" Text="Label"></asp:Label>
                  </td>
            </tr>
            <tr>
               <td>
                   <asp:Label ID="Label4" runat="server" Text="Label" CssClass="label">City: </asp:Label>
                   </td>
                <td>
                 <asp:Label ID="cityResult" runat="server" Text="Label"></asp:Label>
                   </td>
            </tr>
            <tr>
                <td>
                   <asp:Label ID="Label5" runat="server" Text="Label" CssClass="label">State: </asp:Label>
                    </td>
                <td>
                 <asp:Label ID="stateResult" runat="server" Text="Label"></asp:Label>
</td>
            </tr>
            <tr>
                <td>
                  <asp:Label ID="Label6" runat="server" Text="Label" CssClass="label">Zip Code: </asp:Label>
                    </td>
                <td>
                 <asp:Label ID="zipResult" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td>
                  <asp:Label ID="Label7" runat="server" Text="Label" CssClass="label">Email: </asp:Label>
                    </td>
                <td>
                 <asp:Label ID="emailResult" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>




        </table>


        <hr />
              


        </div>
    </asp:Content>