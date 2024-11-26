<%@ Page Title="Principal" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="IndicadoresAcatlan._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-container">
        <h2 class="main-title">Panel Principal</h2>
        <div class="menu-options">
            <div class="menu-item">
                <asp:Button ID="btnPrograms" runat="server" Text="Programas" CssClass="menu-button" />
            </div>
            <div class="menu-item">
                <asp:Button ID="btnCalendario" runat="server" Text="Configura Calendario Captura" CssClass="menu-button" OneClick="btnCalendario_Click"/>
            </div>
            <div class="menu-item">
                <asp:Button ID="btn3" runat="server" Text="Carga de Proyección" CssClass="menu-button" />
            </div>
            <div class="menu-item">
                <asp:Button ID="btn4" runat="server" Text="Reporte General" CssClass="menu-button" />
            </div>
        </div>
    </div>

    <style>
        .main-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .main-title {
            color: #1B396A;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .menu-options {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 15px;
        }

        .menu-item {
            width: 100%;
        }

        .menu-button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            width: 100%;
            font-size: 16px;
            cursor: pointer;
        }

        .menu-button:hover {
            background-color: #0056b3;
        }
    </style>
</asp:Content>
