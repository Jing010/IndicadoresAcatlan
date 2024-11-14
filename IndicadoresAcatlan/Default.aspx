<%@ Page Title="Principal" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="IndicadoresAcatlan._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row mb-4">
    <div class="col-md-3">
        <asp:Button ID="btnPrograms" runat="server" Text="Programas" CssClass="btn btn-primary btn-block" />
    </div>
    <div class="col-md-3">
        <asp:Button ID="btnCalendario" runat="server" Text="Configura Calendario Captura" CssClass="btn btn-primary btn-block" />
    </div>
    <div class="col-md-3">
        <asp:Button ID="btnProyeccion" runat="server" Text="Carga de Proyección" CssClass="btn btn-primary btn-block" />
    </div>
    <div class="col-md-3">
        <asp:Button ID="btnReporte" runat="server" Text="Reporte General" CssClass="btn btn-primary btn-block" />
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
