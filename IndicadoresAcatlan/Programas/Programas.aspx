<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Programas.aspx.vb" Inherits="IndicadoresAcatlan.Programas" %>

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

    <div class="button-container">
        <asp:LinkButton ID="btn10" runat="server" CssClass="edu-button">
            <span class="button-text">Educación de Licenciatura presencial</span>
        </asp:LinkButton>

        <asp:LinkButton ID="btn11" runat="server" CssClass="edu-button">
            <span class="button-text">Educación de Posgrado</span>
        </asp:LinkButton>

        <asp:LinkButton ID="btn12" runat="server" CssClass="edu-button">
            <span class="button-text">Educación Continua, Abierta y a Distancia</span>
        </asp:LinkButton>

        <asp:LinkButton ID="btn31" runat="server" CssClass="edu-button">
            <span class="button-text">Investigación en Ciencias y Desarrollo Tecnológico</span>
        </asp:LinkButton>

        <asp:LinkButton ID="btn32" runat="server" CssClass="edu-button">
            <span class="button-text">Investigación en Humanidades y Ciencias Sociales</span>
        </asp:LinkButton>

        <asp:LinkButton ID="btn33" runat="server" CssClass="edu-button">
            <span class="button-text">Desarrollo Académico en Investigación</span>
        </asp:LinkButton>

        <asp:LinkButton ID="btn41" runat="server" CssClass="edu-button">
            <span class="button-text">Extensión y Difusión Cultural</span>
        </asp:LinkButton>

        <asp:LinkButton ID="btn42" runat="server" CssClass="edu-button">
            <span class="button-text">Vinculación con la Sociedad</span>
        </asp:LinkButton>
    </div>
</asp:Content>