<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Semaforo.aspx.vb" Inherits="IndicadoresAcatlan.Semaforo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .main-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        .title-container {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 20px;
            text-align: center;
        }

        h1 {
            margin: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
            width: 100%;
            max-width: 1200px;
        }

        .box {
            width: 200px;
            padding: 15px;
            border-radius: 10px;
            text-align: center;
            color: #000;
            font-weight: bold;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
        }

        .semaforo {
            background-color: #e0e0e0;
            color: #333;
        }

        .verde {
            background-color: #7dff33;
        }

        .amarillo {
            background-color: #f5fc0f;
        }

        .rojo {
            background-color: #fa0303;
        }

        .range {
            font-size: 1.2em;
            margin-bottom: 10px;
        }

        .important {
            margin-top: 20px;
            background-color: #34568b;
            padding: 10px;
            border-radius: 5px;
            color: #fff;
            text-align: center;
            width: 90%;
            max-width: 1000px;
        }

        .title-image {
            width: 150px;
            height: 150px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-content">
        <!-- Contenedor del título con imágenes -->
        <div class="title-container">
            <!-- Imagen a la izquierda -->
            <asp:Image ID="imgLeft" runat="server" ImageUrl="~/Images/semaforo.jpeg" CssClass="title-image" AlternateText="Imagen izquierda" />
            
            <!-- Título -->
            <h1>Rango de semaforización para calificar indicadores de actividad</h1>
            
            <!-- Imagen a la derecha -->
            <asp:Image ID="imgRight" runat="server" ImageUrl="~/Images/semaforo.jpeg" CssClass="title-image" AlternateText="Imagen derecha" />
        </div>

        <div class="container">
            <!-- Caja 1: Rango de Semáforo -->
            <asp:Panel ID="pnlSemaforo" runat="server" CssClass="box semaforo">
                <div class="range">Rango de Semáforo</div>
                <p>0 a 7</p>
                <p>8 a 70</p>
                <p>71 a 300</p>
                <p>301 a >300</p>
            </asp:Panel>

            <!-- Caja 2: Verde -->
            <asp:Panel ID="pnlVerde" runat="server" CssClass="box verde">
                <div class="range">Verde</div>
                <p>>=80%</p>
                <p>>=85%</p>
                <p>>=90%</p>
                <p>>=95%</p>
            </asp:Panel>

            <!-- Caja 3: Amarillo -->
            <asp:Panel ID="pnlAmarillo" runat="server" CssClass="box amarillo">
                <div class="range">Amarillo</div>
                <p><80% y >60%</p>
                <p><85% y >65%</p>
                <p><90% y >70%</p>
                <p><95% y >75%</p>
            </asp:Panel>

            <!-- Caja 4: Rojo -->
            <asp:Panel ID="pnlRojo" runat="server" CssClass="box rojo">
                <div class="range">Rojo</div>
                <p><=60%</p>
                <p><=65%</p>
                <p><=70%</p>
                <p><=75%</p>
            </asp:Panel>
        </div>

        <asp:Panel ID="pnlImportant" runat="server" CssClass="important">
            IMPORTANTE: Si el resultado supera el 100%, es necesario justificar este incremento para una evaluación más precisa. Los resultados superiores al 100% se destacarán en azul.
            <p>NOTA: El color del semáforo se asigna según un cálculo basado en la proyección y los logros obtenidos.</p>
        </asp:Panel>
    </div>
</asp:Content>