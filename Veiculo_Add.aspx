<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Veiculo_Add.aspx.cs" Inherits="SchoolSystem.Veiculo_Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
<asp:Panel runat="server" ID="pnlCadastro" Visible="true">
<h1>Cadastro de Veiculos</h1>
        <ul>
            <li>
                <asp:Label ID="Label18" runat="server" Text="ID Veiculo"></asp:Label>
                <asp:Label ID="Lb2IdVeiculo" runat="server" Text="1"></asp:Label>
            </li>
            <li>
                <asp:Label ID="Label3" runat="server" Text="Data de Cadastro"></asp:Label>
                <asp:Label ID="lblDataCadastro" runat="server" Text="01/03/2015"></asp:Label>
            </li>
           
            
             <li>
                <span id="Label17">Tipo</span>
                <select class="radiusInput" id="TextBox17" name="ctl00$cphContent$TextBox17">
                <option value=""></option>
                <option value="1">NOVO</option>
                <option value="2">USADO</option>
                </select>
             </li>         
            
            
            
            <li>
                <span id="Label16">Marca</span>
                <select class="radiusInput" id="TextBox16" name="ctl00$cphContent$TextBox16">
                <option value=""></option>
                <option value="1">FIAT</option>
                <option value="2">VW</option>
                <option value="3">CHERRY</option>
                </select>
             </li>
                
                   <li>
                <span id="Label12">Modelo</span>
                <select class="radiusInput" id="TextBox6" name="ctl00$cphContent$TextBox6">
                <option value=""></option>
                <option value="1">ADVANCED DESIGN</option>
                <option value="2">AGILE</option>
                <option value="3">AMAZONA</option>
                </select>
             </li>
           
            <li>
                <asp:Label ID="Label11" runat="server" Text="Ano"></asp:Label>
                <asp:TextBox ID="TextBox5" CssClass="radiusInput" runat="server" Height="16px"></asp:TextBox>
            </li>
                                  
            <li>
                <span id="Label13">Combustivel</span>
                <select class="radiusInput" id="TextBox7" name="ctl00$cphContent$TextBox7">
                <option value=""></option>
                <option value="1">GASOLINA</option>
                <option value="2">ETANOL</option>
                <option value="3">FLEX</option>
                <option value="4">HIBRIDO</option>
                </select>
            </li>
            <li>
                <asp:Label ID="Label14" runat="server" Text="Cor"></asp:Label>
                <asp:TextBox ID="TextBox8" CssClass="radiusInput" runat="server" Height="16px"></asp:TextBox>
           </li>
            <li>
                <asp:Label ID="Label10" runat="server" Text="Acessorios"></asp:Label>
                <asp:TextBox ID="TextBox4" CssClass="radiusInput" runat="server" Height="16px"></asp:TextBox>
            </li>
            
            <li>
                <asp:Label ID="Label15" runat="server" Text="Preço"></asp:Label>
                <asp:TextBox ID="TextBox9" CssClass="radiusInput" runat="server" Height="16px"></asp:TextBox>
            </li>
             <li>
                <asp:Button ID="btnCadastrar" CssClass="btnAdd btn" runat="server" Text="Cadastrar" />
            </li>
        </ul>
    </asp:Panel>
</asp:Content>
