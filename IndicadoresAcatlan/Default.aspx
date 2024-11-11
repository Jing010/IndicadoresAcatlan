<%@ Page Title="Principal" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="IndicadoresAcatlan._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <hr />
            <div class="Programas">
                <asp:Button ID="btn1" runat="server" Text="Programas" />
            </div>
            <hr />
            <hr />
            <hr />
            <hr />
            <div class="Captura">
                <asp:Button ID="btn2" runat="server"  Text="Configura Calendario Captura" />
            </div>
            <hr />
            <hr />
            <hr />
            <hr />
            <hr />
            <div class="Carga">
                <asp:Button ID="btn3" runat="server"  Text="Carga de Proyección" />
            </div>
            <hr />
            <hr />
            <hr />
            <hr />
            <hr />
            <div class="Reporte">
                <asp:Button ID="btn4" runat="server"  Text="Reporte General" />
            </div>
        </div>
    </div>

    <style>
        .container {
            margin-left: 42;  
        }

        .row {
            justify-content: flex-start; 
        }
    </style>
</asp:Content>
