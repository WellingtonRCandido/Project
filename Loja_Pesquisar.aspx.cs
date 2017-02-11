using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;


namespace SchoolSystem
{
    public partial class Loja_Pesquisar : System.Web.UI.Page
    {
        private ModelDataContext mdc; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.populateGrid();
            }
        }

        private void populateGrid(){
            mdc = new ModelDataContext();
            try
            {
                var sourceLoja = from lojas in mdc.Lojas
                                 select lojas;
                gwDados.DataSource = sourceLoja;
                gwDados.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        finally{
        mdc.Dispose();
    }
	
    
    }


    }
}