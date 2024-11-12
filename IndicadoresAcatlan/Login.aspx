<%@ Page Title="Login" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="IndicadoresAcatlan.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .login-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .login-title {
            color: #1B396A;
            text-align: center;
            margin-bottom: 20px;
        }
        .gold-text {
            color: #B88746;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-control {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .btn-login {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            width: 100%;
            cursor: pointer;
        }
        .btn-login:hover {
            background-color: #0056b3;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="login-container">
        <h2 class="login-title">Bienvenido al sistema de</h2>
        <h3 class="login-title gold-text">Seguimiento Programático de la FES ACATLÁN</h3>
        
        <div class="form-group">
            <asp:Label ID="lblUsuario" runat="server" Text="Usuario" AssociatedControlID="txtUsuario" />
            <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" />
        </div>
        
        <div class="form-group">
            <asp:Label ID="lblPassword" runat="server" Text="Contraseña" AssociatedControlID="txtPassword" />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
        </div>
        
        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="btn-login" OnClick="btnIngresar_Click" />
    </div>
</asp:Content>
