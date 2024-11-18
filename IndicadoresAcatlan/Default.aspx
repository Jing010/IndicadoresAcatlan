<%@ Page Title="Principal" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="IndicadoresAcatlan._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .button-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
            max-width: 800px;
            margin: 0 auto;
        }
        
        .edu-button {
            display: flex;
            align-items: center;
            padding: 10px 15px;
            border-radius: 25px;
            background-color: #f0f2f5;
            border: none;
            cursor: pointer;
            min-width: 300px;
            transition: background-color 0.3s;
            text-decoration: none;
        }
        
        .edu-button:hover {
            background-color: #e4e6e9;
        }
      
        .button-text {
            color: #2c3e50;
            font-size: 14px;
            text-align: left;
            display: block;
            margin-left: 40px;
        }
    </style>
<div class="row mb-4">
    <div class="col-md-3">
        <asp:Button ID="btnPrograms" runat="server" Text="Programas" CssClass="edu-button" />
    </div>
    <div class="col-md-3">
        <asp:Button ID="btnCalendario" runat="server" Text="Configura Calendario Captura" CssClass="edu-button" />
    </div>
    <div class="col-md-3">
        <asp:Button ID="btnProyeccion" runat="server" Text="Carga de Proyección" CssClass="edu-button" />
    </div>
    <div class="col-md-3">
        <asp:Button ID="btnReporte" runat="server" Text="Reporte General" CssClass="edu-button" />
    </div>
</div>
    <style>
        .container {
            margin-left: 42;  
        }

        .row {
            justify-content: flex-start; 
        }
        .col-md-3 {
            height: 69px;
        }
    </style>
</asp:Content>
