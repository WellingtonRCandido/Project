<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Loja_Edit.aspx.cs" Inherits="SchoolSystem.Loja_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
<asp:Panel runat="server" ID="pnlCadastro" Visible="true">
<h1>Atualizar Loja</h1>
        <ul>
            <li>
                <asp:Label ID="Label1" runat="server" Text="ID Loja"></asp:Label>
                <asp:Label ID="Lb2IdLoja" runat="server" Text="1"></asp:Label>
            </li>
            <li>
                <asp:Label ID="Label3" runat="server" Text="Data de Cadastro"></asp:Label>
                <asp:Label ID="lblDataCadastro" runat="server" width="100px"  Text="01/03/2015"></asp:Label>
            </li>
            <li></li>
         <li>
                <asp:Label ID="Label14" runat="server" Text="Loja"></asp:Label>
                <asp:TextBox ID="TextBox8" CssClass="radiusInput" runat="server" Height="16px" Width="473px"></asp:TextBox>
       </li> 
            <li></li>
            <li></li>
        <li>
                <asp:Label ID="Label2" runat="server" Text="Endereço"></asp:Label>
                <asp:TextBox ID="TextBox1" CssClass="radiusInput" runat="server" Height="16px" Width="473px"></asp:TextBox>
       </li> 
            <li></li>
            <li></li>
            <li>
            <asp:Label ID="Label4" runat="server" Text="CEP"></asp:Label>
                <asp:TextBox ID="TextBox2" CssClass="radiusInput" runat="server" Height="16px"></asp:TextBox>
             </li>
            <li>
                <span id="Label17">UF</span>
                <select class="radiusInput" id="TextBox17" name="ctl00$cphContent$TextBox17">
                <option value=""></option>
                <option value="1">SP</option>
                <option value="2">MG</option>
                </select>
             </li>         
            <li>
            <asp:Label ID="Label5" runat="server" Text="Municipio"></asp:Label>
                <asp:TextBox ID="TextBox3" CssClass="radiusInput" runat="server" Height="16px"></asp:TextBox>
             </li>
            <li>
                 <asp:Label ID="Label6" runat="server" Text="Cidade"></asp:Label>
                <asp:TextBox ID="TextBox4" CssClass="radiusInput" runat="server" Height="16px"></asp:TextBox>
             </li>   
             <li>
                 <asp:Label ID="Label7" runat="server" Text="Telefone"></asp:Label>
                <asp:TextBox ID="TextBox5" CssClass="radiusInput" runat="server" Height="16px"></asp:TextBox>
             </li>
            <li></li>
            <li>
                <asp:Button ID="bntAtualizar" CssClass="btn btnEdit" runat="server" Text="Atualizar" />
            </li>
            <li>
                <asp:Button ID="bntExcluir" CssClass="btn btnExcluir" runat="server" Text="Excluir" />
            </li>
              </ul>
    </asp:Panel>
</asp:Content>
