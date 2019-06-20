using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Book_Store : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    { 
        //example of Response.Redirect
        string fname = Firstname.Text;
        string lname = Lastname.Text;
        string street = address.Text;
        string town = city.Text;
        string state_var = state.Text;
        string wherebuy = DropDownList1.SelectedItem.Text;
        bool onlinebuy = RadioButton1.Checked;
        
       
        DropDownList2.Items.Add ("Your name is " + fname + " " + lname);
        DropDownList2.Items.Add("Your Address is " + street);
        DropDownList2.Items.Add("You get books from " + wherebuy);

        if (onlinebuy == true)
        { DropDownList2.Items.Add("You have purchased a book online before."); }
        else
        { DropDownList2.Items.Add("You have not purchased a book online before."); }




       
    }

    protected void button3_click(object sender, EventArgs e)
    {
        string fname = Firstname.Text;
        string lname = Lastname.Text;
        string street = address.Text;
        string town = city.Text;
        string state_var = state.Text;
        string wherebuy = DropDownList1.SelectedItem.Text;
        bool onlinebuy = RadioButton1.Checked;

        Session["FirstName"] = fname;
        Session["Lastname"] = lname;
        Session["Address"] = street;
        Session["City"] = town;
        Session["State"] = state_var;
       


        Response.Redirect("Survey Summary.aspx");
       

        
               
                



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
    }



    protected void Button4_Click(object sender, EventArgs e)
    {
        //Why is config manager not working? This is the code used to retrieve the SurveyID then add the ID #
        String message = ("Survey ID is: " + ConfigurationManager.AppSettings["SurveyID"]);
        DropDownList2.Items.Add(message);



    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        string fname = Firstname.Text;
        string lname = Lastname.Text;
        string street = address.Text;
        string town = city.Text;
        string state_var = state.Text;
        string wherebuy = DropDownList1.SelectedItem.Text;
        bool onlinebuy = RadioButton1.Checked;

        XMLAccess xmlAccess = new XMLAccess();

        //create a list
        Dictionary<string, string> studentInfo = new Dictionary<string, string>();
        studentInfo.Add("name", fname);
        // add password and ID function ... should probably just make a log in page. Do that next.
        studentInfo.Add("Password", txtPhone.Text);
        studentInfo.Add("ID", txtAddress.Text);
        studentInfo.Add("Address", street + " " + town + ", " + state_var);

        if (xmlAccess.AddNode(studentInfo))
        {
            Response.Write(txtName.Text + " is added to xml database.");
        }
        else
        {
            Response.Write("Can not add the new student.");
        }

    }

}