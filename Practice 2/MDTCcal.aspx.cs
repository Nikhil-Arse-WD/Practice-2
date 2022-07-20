using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practice_2
{
    public partial class MDTCcal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // variables to get from the form 
            double usrate = Convert.ToDouble(Textusrate.Text);  
            double vgrt = Convert.ToDouble(Textusrate.Text); 
            double bstay = Convert.ToDouble(Textusrate.Text); 
            
            double tugt = Convert.ToDouble(Texttugt.Text);
            double tugp = Convert.ToDouble(Texttugp.Text);

            // variables to be calculated and displyed 
            double tpdues = 0, tpilot = 0, tbhire = 0, tanchor = 0;
            double ttugt = tugt * 1755;
            double ttugp = tugp * 800;
            double GA;


            // fixed variables 
            double minpdues = 260.00, minpilot = 1800.00, minbhire = 590;

            // Calculations based on fixed variables 
            double pdues = 0;
            double pilot = 0;
          
            double anchor = 0;
            
            if(vgrt> 0 && (vgrt*0.05) > minpdues)
            {
                pdues = vgrt * 0.05;
            }
            else
            {
                tpdues = 0;
            }

            if (vgrt > 0 && (vgrt * 0.65) > minpilot)
            {
                pilot = vgrt * 0.05;
            }
            else
            {
                tpilot = 0;
            }

            if(vgrt > 0 && ((vgrt+bstay) *0.0084 ) > minbhire)
            {
                tbhire = (vgrt + bstay) * 0.0084;
            }
            else
            {
                tbhire = 0;
            }


            // calculations 



            if (vgrt == 0)
            {
                tpdues = 0;
            }
            else if (vgrt > 0 && (vgrt*0.05) > minpdues)
            {
                tpdues = vgrt*0.05;
                tpilot = vgrt * 0.65;
                if (vgrt > 0 && bstay > 0)
                {
                    tbhire = (vgrt * 0.0084) + (bstay * 0.0084);
                } 
                else
                {
                    tbhire = 0;
                }

            }
     
            else if (vgrt < minpdues)
            {
                tpdues = 0;
                tpilot = 0;
               
            }
            else
            {
                Console.WriteLine("Enter Valid Value");
            }

            if (bstay == 0)
            {
                tbhire = 0;
            }
            else if (bstay > 0 && bstay > minbhire)
            {
                tbhire = bstay*0.0084;
            }
            else
            {
                Console.WriteLine("Enter Valid Value");
            }

            


             if(AmountType.SelectedIndex == 1)
            {
                tpdues = tpdues * usrate;  
                tpilot = tpilot * usrate;
                tbhire = tbhire * usrate;
                tanchor = tanchor * usrate;
                ttugt = ttugt * usrate;
                ttugp = ttugp * usrate;

                GA = tpdues + tpilot + tbhire + tanchor + tugt + tugp ;
            }
             else
            {
                GA = tpdues + tpilot + tbhire + tanchor + tugt + tugp;
            }


             
         




        }
    }
}