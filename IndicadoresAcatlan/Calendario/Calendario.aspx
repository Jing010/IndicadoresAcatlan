<%@ Page Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calendario.aspx.vb" Inherits="IndicadoresAcatlan.Calendario" %>

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
            font-family: "Oswald", sans-serif;
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
            background-color:#1B396A ;/*#1B396A*/
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
        <!-- Primera fila con el input del año -->
        <tr>
            <td class="year-column">
                <input type="number" id="year1" placeholder="Ej. 2024" onchange="propagateYear(this)" />
            </td>
            <td class="input-cell"><input type="date" id="1erGrisInicio"></td>
            <td class="input-cell"><input type="date" id="1erGrisTermino"></td>
            <td class="input-cell"><input type="date" id="1erBlancoInicio"></td>
            <td class="input-cell"><input type="date" id="1erBlancoTermino"></td>
        </tr>
        <!-- Filas subsecuentes con el año como texto -->
        <tr>
            <td class="year-column year-display"></td>
            <td class="input-cell"><input type="date" id="2doGrisInicio"></td>
            <td class="input-cell"><input type="date" id="2doGrisTermino"></td>
            <td class="input-cell"><input type="date" id="2doBlancoInicio"></td>
            <td class="input-cell"><input type="date" id="2doBlancoTermino"></td>
        </tr>
        <tr>
            <td class="year-column year-display"></td>
            <td class="input-cell"><input type="date" id="3roGrisInicio"></td>
            <td class="input-cell"><input type="date" id="3roGrisTermino"></td>
            <td class="input-cell"><input type="date" id="3roBlancoInicio"></td>
            <td class="input-cell"><input type="date" id="3roBlancoTermino"></td>
        </tr>
        <tr>
            <td class="year-column year-display"></td>
            <td class="input-cell"><input type="date" id="4toGrisInicio"></td>
            <td class="input-cell"><input type="date" id="4toGrisTermino"></td>
            <td class="input-cell"><input type="date" id="4toBlancoInicio"></td>
            <td class="input-cell"><input type="date" id="4toBlancoTermino"></td>
        </tr>
    </tbody>
</table>

        <div class="calendar-buttons">
            <button class="btn-save">Guardar</button>
            <button class="btn-edit">Editar</button>
        </div>

</asp:Content>