<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Loja_Add.aspx.cs" Inherits="SchoolSystem.Loja_Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
 <script src="js/Mascara.js" type="text/javascript"></script>
 <script src="js/CEPAut.js" type="text/javascript"></script>
   <asp:Panel runat="server" ID="pnlCadastro" Visible="true">
<h1>Cadastro de Lojas</h1>
        <ul>
            <li>
                <asp:Label ID="Label1" runat="server" Text="ID Loja"></asp:Label>
                <asp:TextBox ID="tbIdLoja" MaxLength="8" CssClass="radiusInput" runat="server" Enabled="true" width="100px" TextMode="SingleLine"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" controltovalidate="tbIdLoja" runat="server" style="color: maroon; font-weight: bold; visibility: visible;" ErrorMessage="Somente Numeros!" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
              
            </li>
            <li>
                <asp:Label ID="Label3" runat="server" Text="Data de Cadastro"></asp:Label>
                <asp:Label ID="lblDataCadastro" runat="server" width="100px" ></asp:Label>
                
            </li>
            <li></li>
         <li>
                <asp:Label ID="Label14" runat="server" Text="Loja"></asp:Label>
                <asp:TextBox ID="tbLoja" CssClass="radiusInput" runat="server" Height="16px" Width="473px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbLoja" ErrorMessage="*" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
       </li> 
            <li></li>
            <li></li>
        <li>
                <asp:Label ID="Label2" runat="server" Text="Endereço"></asp:Label>
                <asp:TextBox ID="tbEndereco" CssClass="radiusInput" runat="server" Height="16px" Width="473px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbEndereco" ErrorMessage="*" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
       </li> 
            <li></li>
            <li></li>
            <li>
                <asp:Label ID="Label4" runat="server" Text="CEP"></asp:Label> 
                <asp:TextBox ID="tbCep" CssClass="radiusInput" runat="server" MaxLength="9" onblur="consultacep(this.value)" onkeypress="formataCEP(event,this,'#####-###');" style="text-align:right" Height="16px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbCep" ErrorMessage="*" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
             </li>
            <li>
                <asp:Label ID="Label17" Enabled="true"  runat="server" Text="UF"></asp:Label>
                <select id="tbUF" runat="server" class="radiusInput">
                <option value=""></option>
                <option value="SP">SP</option>
                <option value="RJ">RJ</option>
                <option value="MG">MG</option>
                </select>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbUF" ErrorMessage="*" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
             </li>
                     
            <li>
            <asp:Label ID="Label5" runat="server" Text="Bairro"></asp:Label>
                <asp:TextBox ID="tbMunicipio" CssClass="radiusInput" runat="server" Height="16px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbMunicipio" ErrorMessage="*" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
            </li>
            <li>
                 <asp:Label ID="Label6" runat="server" Text="Cidade"></asp:Label>
                <asp:TextBox ID="tbCidade" CssClass="radiusInput" runat="server" Height="16px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbCidade" ErrorMessage="*" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
             </li>   
             <li>
                 <asp:Label ID="Label7" runat="server" Text="Telefone"></asp:Label>
                <asp:TextBox ID="tbTelefone" CssClass="radiusInput" runat="server" MaxLength="15" onkeypress="formatTel(this)" Height="16px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbTelefone" ErrorMessage="*" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
             </li>
            <li></li>
             <li>
                <asp:Button ID="btnCadastrar" CssClass="btnAdd btn" OnClick="btnCadastrar_Click" runat="server" Text="Cadastrar" />
            </li>
        </ul>
    </asp:Panel>
    
</asp:Content>
