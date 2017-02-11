<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Loja_Pesquisar.aspx.cs" Inherits="SchoolSystem.Loja_Pesquisar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
<script src="scripts/jquery.bootgrid.fa.js" type="text/javascript"></script>
<script src="scripts/jquery.bootgrid.fa.min.js" type="text/javascript"></script>
<script src="scripts/jquery.bootgrid.js" type="text/javascript"></script>
<script src="scripts/jquery.bootgrid.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function testBtn() {
            var grid = $("#grid-command-buttons").bootgrid({
                ajax: true,
                post: function () {
                    return {
                        id: "b0df282a-0d67-40e5-8558-c9e93b7befed"
                    };
                },
                url: "/api/data/basic",
                formatters: {
                    "commands": function (column, row) {
                        return "<button type=\"button\" class=\"btn btn-xs btn-default command-edit\" data-row-id=\"" + row.id + "\"><span class=\"fa fa-pencil\"></span></button> " +
                            "<button type=\"button\" class=\"btn btn-xs btn-default command-delete\" data-row-id=\"" + row.id + "\"><span class=\"fa fa-trash-o\"></span></button>";
                    }
                }
            }).on("loaded.rs.jquery.bootgrid", function () {
                /* Executes after data is loaded and rendered */
                grid.find(".command-edit").on("click", function (e) {
                    alert("You pressed edit on row: " + $(this).data("row-id"));
                }).end().find(".command-delete").on("click", function (e) {
                    alert("You pressed delete on row: " + $(this).data("row-id"));
                });
            });
        }



</script>
<asp:Panel runat="server" ID="pnlCadastro" Visible="true">
<h1>Pesquisar Lojas</h1>
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
                <asp:Button ID="btnSearch" CssClass="btn btnSearch" runat="server" Text="Pesquisar" />
            </li>
            <li>
                <asp:Button ID="bntAtualizar" CssClass="btn btnEdit" runat="server" Text="Atualizar" />
            </li>

    </asp:Panel>
        </ul>
             <asp:Panel runat="server" ID="pnlShowData" Visible="true">
        <h1>Todas as Lojas Cadastrados</h1>
        <asp:GridView ID="gwDados" runat="server" EmptyDataText="Não Existem Lojas Cadastradas..."></asp:GridView>
        
<table id="grid-data" class="table table-condensed table-hover table-striped">
    <thead>
        <tr>
            <th data-column-id="id" data-type="numeric">ID</th>
            <th data-column-id="sender">Sender</th>
            <th data-column-id="received" data-order="desc">Received</th>
            <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commands</th>
        </tr>
    </thead>
</table>   
  </asp:Panel>
</asp:Content>



