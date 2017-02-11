using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;


namespace SchoolSystem
{
    public partial class Loja_Add : System.Web.UI.Page
    {
        private ModelDataContext mdc;


        protected void Page_Load(object sender, EventArgs e)
        {
            lblDataCadastro.Text = DateTime.Now.ToShortDateString();
            
        }

        protected void btnCadastrar_Click(object obj, EventArgs e)
        {
            this.onInsert();
        }

        private void onInsert()
        {
            mdc = new ModelDataContext();
            try
            {
                Loja loja = new Loja();
                loja.IdLoja = int.Parse(tbIdLoja.Text.Trim());
                loja.Loja1 = tbLoja.Text.Trim();
                loja.DataCadastro = DateTime.Parse(lblDataCadastro.Text.Trim());
                loja.Endereco = tbEndereco.Text.Trim();
                loja.Celular = tbTelefone.Text.Trim();
                loja.Cep = tbCep.Text.Trim();
                loja.Cidade = tbCidade.Text.Trim();
                loja.Municipio = tbMunicipio.Text.Trim();
                loja.UF = tbUF.Value.ToString();
                                
                mdc.Lojas.InsertOnSubmit(loja);
                mdc.SubmitChanges();

                Response.Write("<script language=javascript>alert('Cadastro efetuado com sucesso!!!');window.location.href='Loja_Add.aspx';</script>");
               
            }
            catch (Exception)

                
            {

                Response.Write("<script language=javascript>alert('Cadastro Existente !!!');window.location.href='Loja_Add.aspx';</script>");  
              
            }
            finally
            {
                mdc.Dispose();
            }

        }

    }
}