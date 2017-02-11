using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SchoolSystem
{
    public partial class Tela_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bntSair.Attributes.Add("onclick", "window.close();");
        }

        protected void bntSair_Click(object sender, EventArgs e)
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Fechar", "window.close()", true);
        }

        protected void bntEntrar_Click(object sender, EventArgs e)
        {
            if ((TextBox2.Text == "admin") && (TextBox3.Text == "admin"))
            {
                Response.Redirect("Veiculo.aspx");
               
                
            }
            else 
            {
                Response.Write("<SCRIPT language='JavaScript'>alert('USUARIO OU SENHA NÃO CONFERE!!');</SCRIPT>");     
                                       
            }
        }

  
    }

}