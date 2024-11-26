<%@ Page Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeFile="Calendario.aspx.vb" Inherits="IndicadoresAcatlan.Calendario" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <style>
        .calendar-container {
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            background-color: #F8F9FA;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .calendar-title {
            text-align: center;
            font-family: Arial, sans-serif;
            font-size: 24px;
            font-weight: bold;
            color: #1B396A;
            margin-bottom: 20px;
        }
        .calendar-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .calendar-table th, .calendar-table td {
            border: 1px solid #bfbfb3;
            padding: 10px;
            text-align: center;
            border-radius: 5px;
        }
        .calendar-table th {
            background-color:#1B396A;
            color: lightgray;
            font-weight: bold;
        }
        .year-column input {
            width: 70%;
            padding: 3px;
            text-align: center;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .input-cell input {
            width: 90%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .calendar-buttons {
            text-align: center;
            margin-top: 20px;
        }
        .btn-save, .btn-edit {
            background-color: #1B396A;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 0 10px;
            font-size: 16px;
        }
        .btn-save:hover, .btn-edit:hover {
            background-color: #0056b3;
        }
        .footer-text {
            margin-top: 30px;
            text-align: center;
            font-size: 12px;
            color: #666;
        }
    </style>
    <script>
        function propagateYear(input) {
            const year = input.value;
            const yearCells = document.querySelectorAll(".year-column input");
            yearCells.forEach(cell => {
                if (cell !== input) {
                    cell.value = year;
                }
            });
        }
    </script>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="calendar-container">
        <h2 class="calendar-title">Calendario de Indicadores</h2>
        <table class="calendar-table">
            <thead>
                <tr>
                    <th rowspan="2">Año</th>
                    <th colspan="2">Indicadores Grises</th>
                    <th colspan="2">Indicadores Blancos</th>
                </tr>
                <tr>
                    <th>Fecha Inicio</th>
                    <th>Fecha Término</th>
                    <th>Fecha Inicio</th>
                    <th>Fecha Término</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="year-column">
                        <asp:TextBox ID="txtYear" runat="server" TextMode="Number" placeholder="Ej. 2024" 
                                   CssClass="year-input" AutoPostBack="true" 
                                   OnTextChanged="txtYear_TextChanged" />
                    </td>
                    <td class="input-cell"><asp:TextBox ID="txt1erGrisInicio" runat="server" TextMode="Date" /></td>
                    <td class="input-cell"><asp:TextBox ID="txt1erGrisTermino" runat="server" TextMode="Date" /></td>
                    <td class="input-cell"><asp:TextBox ID="txt1erBlancoInicio" runat="server" TextMode="Date" /></td>
                    <td class="input-cell"><asp:TextBox ID="txt1erBlancoTermino" runat="server" TextMode="Date" /></td>
                </tr>
                <tr>
                    <td class="year-column">
                        <asp:TextBox ID="txtYear2" runat="server" TextMode="Number" CssClass="year-input" Enabled="false" />
                    </td>
                    <td class="input-cell"><asp:TextBox ID="txt2doGrisInicio" runat="server" TextMode="Date" /></td>
                    <td class="input-cell"><asp:TextBox ID="txt2doGrisTermino" runat="server" TextMode="Date" /></td>
                    <td class="input-cell"><asp:TextBox ID="txt2doBlancoInicio" runat="server" TextMode="Date" /></td>
                    <td class="input-cell"><asp:TextBox ID="txt2doBlancoTermino" runat="server" TextMode="Date" /></td>
                </tr>
                <tr>
                    <td class="year-column">
                        <asp:TextBox ID="txtYear3" runat="server" TextMode="Number" CssClass="year-input" Enabled="false" />
                    </td>
                    <td class="input-cell"><asp:TextBox ID="txt3erGrisInicio" runat="server" TextMode="Date" /></td>
                    <td class="input-cell"><asp:TextBox ID="txt3erGrisTermino" runat="server" TextMode="Date" /></td>
                    <td class="input-cell"><asp:TextBox ID="txt3erBlancoInicio" runat="server" TextMode="Date" /></td>
                    <td class="input-cell"><asp:TextBox ID="txt3erBlancoTermino" runat="server" TextMode="Date" /></td>
                </tr>
                <tr>
                    <td class="year-column">
                        <asp:TextBox ID="txtYear4" runat="server" TextMode="Number" CssClass="year-input" Enabled="false" />
                    </td>
                    <td class="input-cell"><asp:TextBox ID="txt4toGrisInicio" runat="server" TextMode="Date" /></td>
                    <td class="input-cell"><asp:TextBox ID="txt4toGrisTermino" runat="server" TextMode="Date" /></td>
                    <td class="input-cell"><asp:TextBox ID="txt4toBlancoInicio" runat="server" TextMode="Date" /></td>
                    <td class="input-cell"><asp:TextBox ID="txt4toBlancoTermino" runat="server" TextMode="Date" /></td>
                </tr>
            </tbody>
        </table>

        <div class="calendar-buttons">
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn-save" OnClick="btnGuardar_Click" />
            <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="btn-edit" OnClick="btnEditar_Click" />
        </div>
    </div>
</asp:Content>
