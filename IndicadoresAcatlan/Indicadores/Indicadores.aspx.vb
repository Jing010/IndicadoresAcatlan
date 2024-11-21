'Imports System.Data
'Imports System.Data.SqlClient
'Imports System.Configuration
'Imports System.IO
Public Class Indicadores
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ConfigurarBotones()
        End If
    End Sub

    Private Sub ConfigurarBotones()
        Dim permisos As List(Of String) = DirectCast(Session("Permisos"), List(Of String))
        
        btnGuardar.Visible = permisos.Contains("Guardar")
        btnValidar.Visible = permisos.Contains("Validar")
        btnModificar.Visible = permisos.Contains("Modificar")
    End Sub

    Protected Sub Semaforo(sender As Object, e As EventArgs) Handles btnSemaforo.Click
        Response.Redirect("~/Indicadores/Semaforo.aspx", False)
    End Sub

    'Dim dbconx As New DBconexion
    'Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load


    'End Sub

    'asegurarse de que el metodo se usa con el nombre del boton que guarda los datos
    'Private Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnInsertar.Click

    'asegurarse de que el metodo se ejecute con el mismo numero de variables 
    'que cajas de texto en el formulario.
    'asegurarse de que el metodo utiliza los nombres correctos de las
    'cajas de texto en el formulario
    '    DBconexion.insertar(txt_log.Text, txt_causa.Text, txt_plnAcn.Text)

    'End Sub
End Class