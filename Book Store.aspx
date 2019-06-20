<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Book Store.aspx.cs" Inherits="Book_Store" MasterPageFile="~/Site.master" %>

<asp:Content ID="HeaderContent"  runat="server" ContentPlaceHolderID="HeaderContent"></asp:Content>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
<asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>

      <div id="bookpicture" runat="server" style="text-align:center;">
            
             <asp:Image ID="Image1" runat="server" ImageUrl="open-book.jpg" ImageAlign="top" Height="250" Width="750" />
          <br />
          
          </div>
    <div id="bookstoresurvey" runat="server">
        
               <h1><b>Book Store</b></h1>
       
            <table>
            <tr>
    
               <td> <asp:Label ID="Label1" runat="server" Text="Label" CssClass="label">First Name: </asp:Label>
                
                   <asp:TextBox ID="Firstname" runat="server" CssClass="textbox"></asp:TextBox>
                  
           
                 <asp:Label ID="Label2" runat="server" Text="Label" CssClass="label">Last Name: </asp:Label>
                <asp:TextBox ID="Lastname" runat="server" cssclass="textbox"></asp:TextBox> </td>
               
            </tr>
            <tr>
              <td>
                   <asp:Label ID="Label3" runat="server" Text="Address" CssClass="label">Address: </asp:Label>
                <asp:TextBox ID="address" runat="server" CssClass="textbox"></asp:TextBox>
                  </td>
            </tr>
            <tr>
               <td>
                   <asp:Label ID="Label4" runat="server" Text="Label" CssClass="label">City: </asp:Label>
                <asp:TextBox ID="city" runat="server" CssClass="textbox"></asp:TextBox>
                   </td>
            </tr>
            <tr>
                <td>
                   <asp:Label ID="Label5" runat="server" Text="Label" CssClass="label">State: </asp:Label>
                <asp:TextBox ID="state" runat="server" CssClass="textbox"></asp:TextBox>
</td>
            </tr>
            <tr>
                <td>
                  <asp:Label ID="Label6" runat="server" Text="Label" CssClass="label">Zip Code: </asp:Label>
                <asp:TextBox ID="zip" runat="server" CssClass="textbox"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="zip" ValidationExpression="\d{5}"
                          ErrorMessage="Please Enter 5 Digit Zip Code" forecolor="Red" ValidationGroup="Group1"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ForeColor="Red" controltovalidate="zip" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td>
                  <asp:Label ID="Label7" runat="server" Text="Label" CssClass="label">Email: </asp:Label>
                <asp:TextBox ID="email" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
            </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label20" runat="server" Text="Label" CssClass="label">Survey ID</asp:Label>
                        <asp:TextBox ID="SurveyID" runat="server" CssClass="Textbox"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="SurveyID" valuetocompare="Survey1234" ValidationGroup="Group2" 
                            forecolor="Red" ErrorMessage="Enter Correct Survey Code: Survey1234"></asp:RegularExpressionValidator>

                    </td>


                </tr>



        </table>


        <hr />

        <table>
            <tr>
                <td>Have you ever been here before?</td>
                <td><input type="radio" name="yes" value="yes" />Yes &nbsp;&nbsp; <input type="radio" name="no" value="no" /> No </td>
            </tr>
            <tr>
                <td>Where do you usually purchase books?</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Barnes & Noble</asp:ListItem>
                        <asp:ListItem>Borders</asp:ListItem>
                        <asp:listitem Selected="True">School Book Store</asp:listitem>
                    </asp:DropDownList>
                 
                </td>
            </tr>
          

            <tr>
                <td>Have you ever purchased books online before?</td>
               <td> <asp:RadioButton ID="RadioButton1" runat="server" Text="Yes" /> &nbsp;&nbsp;<asp:RadioButton ID="RadioButton3" runat="server" Text="No" /></td>
                
            </tr>
            <tr>
                <td>How does shopping on the Internet compare to shopping in a book store?</td>
                <td> <textarea rows="7" cols="60"></textarea></td>


            </tr>
        </table>
          
        <input type="submit" name="submit" value="Submit" />
        <asp:Button ID="Button5" runat="server" Text="Submit XML" />
        <input type="submit" name="summary" value="Summary" onclick="ShowSubmit()" />
        
         <asp:Button ID="Button2" runat="server" Text="Name and Data" OnClick="Button2_Click"/>
          <asp:Button ID="Button1" runat="server" Text="Clear" onclick="Button1_Click"/>
          <br />
        <asp:Button ID="Button3" runat="server" Text="Summary Page" OnClick="button3_click" />
        <br />
        <asp:Button ID="Button4" runat="server" Text="SurveyID Validator" OnClick="Button4_Click" />
        
        
      
          
        </div>

    </asp:Content>