/** =========================================================

 BrianElliott

 Operating System Windows 10

 Microsoft Visual Studio 2017 Enterprise

 CIS 174

 Unit 2 programming assignment

 Program Description: User inputs the sales price and discount price of an item. The application then
                      calculates the discount off of the sales price and then applies the discount to the total price
                      giving the user the total price with discount applied off of the item

 Academic Honesty:

 I attest that this is my original work.

 I have not used unauthorized source code, either modified or unmodified.

 I have not given other fellow student(s) access to my program.

=========================================================== **/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrianElliott_week2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        // On click application takes the user input of sales price and discount percent
        // calculates the discount off of the sale price and then applies discount to total price
        // gives user the total price with discount applied 
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                int salesPrice = Convert.ToInt32(txtSalesPrice.Text);
                int discountPercent = Convert.ToInt32(txtDiscountPercent.Text);

                int totalDiscountAmt = salesPrice * discountPercent / 100;
                lblDiscountAmt.Text = totalDiscountAmt.ToString("c");

                int totalPrice = salesPrice - totalDiscountAmt;
                lblTotalPrice.Text = totalPrice.ToString("c");
            }
        }        
    }
}