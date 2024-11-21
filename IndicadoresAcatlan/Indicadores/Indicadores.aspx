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
        .button-container.button-actions {
         display: flex;
        justify-content: flex-end;
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
            <div class="main-title">10 Educación de Licenciatura Presencial</div>
            <h3 class="subtitle">INDICADORES BLANCOS</h3>
            <div class="button-container">
                <button class="button">Plantilla</button>
                <button class="button">FT</button>
                <asp:Button ID="btnSemaforo" runat="server" CssClass="button" />
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
                <th>Seleccionar</th>
            </tr>
            <tr>
                <td>A.2.2</td>
                <td>Cursos y talleres extracurriculares e intersemestrales impartidos</td>
                <td>10</td>
                <td><asp:TextBox ID="ProyT_A22" runat="server" CssClass="input-text"></asp:TextBox></td>
                <td><asp:TextBox ID="LogroT_A22" runat="server" CssClass="input-text"></asp:TextBox></td>
                <td class="color-green">100%</td>
                <td><asp:TextBox ID="Causa_A22" runat="server" CssClass="input-text"></asp:TextBox></td>
                <td><asp:TextBox ID="Accion_A22" runat="server" CssClass="input-text"></asp:TextBox></td>
                <td><asp:CheckBox ID="chkSelect_A22" runat="server" /></td>
            </tr>
            <tr>
                <td>A.2.3</td>
                <td>Programas de apoyo a la disminución del rezago académico</td>
                <td>5</td>
                <td><asp:TextBox ID="ProyT_A23" runat="server" CssClass="input-text"></asp:TextBox></td>
                <td><asp:TextBox ID="LogroT_A23" runat="server" CssClass="input-text"></asp:TextBox></td>
                <td class="color-yellow">80%</td>
                <td><asp:TextBox ID="Causa_A23" runat="server" CssClass="input-text"></asp:TextBox></td>
                <td><asp:TextBox ID="Accion_A23" runat="server" CssClass="input-text"></asp:TextBox></td>
                <td><asp:CheckBox ID="chkSelect_A23" runat="server" /></td>
            </tr>
        </table>
         <div class="button-container button-actions">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="button" />
                <asp:Button ID="btnValidar" runat="server" Text="Validar" CssClass="button" />
                <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="button" />
            </div>
    </div>
</asp:Content>
