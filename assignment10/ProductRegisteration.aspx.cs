using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment10
{
    public partial class ProductRegisteration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            LblMsg.Visible = false;
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (CalRelease.SelectedDate != DateTime.MinValue)
            {

                LblMsg.Text = "Valid Date";
            }
            else
            {

                LblMsg.Text = "Please select a valid date";
            }

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            LblMsg.Visible = true;
            LblMsg.Text = "Product Name: " + TxtPName.Text;
            LblMsg.Text += "</br> Product Category: " + DropDownList1.Text;
            LblMsg.Text += "</br> Product Price: " + TxtPPrice.Text;
            LblMsg.Text += "</br> Product Description: " + TxtDesc.Text;
            LblMsg.Text += "</br> Release Date: " + CalRelease.SelectedDate.ToShortDateString();


        }
    }
}