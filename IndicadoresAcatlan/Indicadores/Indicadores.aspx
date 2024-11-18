<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Indicadores.aspx.vb" Inherits="IndicadoresAcatlan.Indicadores" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="head" runat="server">
    <style>
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .header-box {
            text-align: center;
            margin-bottom: 30px;
        }

        .main-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .subtitle {
            margin: 15px 0;
        }

        .button-container {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin: 15px 0;
        }

        .button {
            padding: 8px 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #f8f9fa;
            cursor: pointer;
        }

        .semaforo-icon {
            padding: 8px 16px;
            border: none;
            background: none;
            cursor: pointer;
            font-size: 20px;
        }

        .indicadores-table {
            width: 100%;
            margin: 0 auto;
            border-collapse: collapse;
            text-align: center;
        }

        .indicadores-table th, 
        .indicadores-table td {
            padding: 10px;
            border: 1px solid #ddd;
        }

        .indicadores-table th {
            background-color: #f8f9fa;
        }

        .color-green { color: green; }
        .color-yellow { color: #ffd700; }
        .color-red { color: red; }
        .color-blue { color: blue; }
    </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Contenedor Principal -->
    <div class="container">
        <!-- Sección de títulos y botones -->
        <div class="header-box">
            <!-- Caja grande de título -->
            <div class="main-title">32 Investigación en Ciencias y Desarrollo Tecnológico</div>
            
            <!-- Subtítulo y botones -->
            <div>
                <h3 class="subtitle">INDICADORES BLANCOS</h3>
                <div class="button-container">
                    <button class="button">Plantilla</button>
                    <button class="button">FT</button>
                     <asp:Button ID="btnSemaforo" runat="server" />
                </div>
            </div>
        </div>
        <!-- Tabla de Indicadores -->
        <table class="indicadores-table">
            <tr>
                <th>Clave</th>
                <th>Indicador</th>
                <th>Logro T1</th>
                <th>Proy T2</th>
                <th>Logro T2</th>
                <th>%</th>
                <th>Causa</th>
                <th>Plan de Acción</th>
            </tr>
            <tr>
                <td>A 1.1</td>
                <td>Proyectos de investigación con financiamiento interno en desarrollo</td>
                <td>
                    9
                </td>
                <td>
                    <asp:Textbox ID="ProyT" runat="server"></asp:Textbox>
                </td>
                <td>
                    <asp:Textbox ID="LogroT" runat="server"></asp:Textbox>

                </td>
                <td class="color-green">110%</td>
                <td>
                    <asp:Textbox ID="Causa" runat="server"></asp:Textbox>
                </td>
                <td>
                    <asp:Textbox ID="Accion" runat="server"></asp:Textbox>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>