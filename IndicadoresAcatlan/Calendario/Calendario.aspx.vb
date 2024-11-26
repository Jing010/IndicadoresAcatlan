Option Strict On
Option Explicit On

Imports System
Imports System.Web.UI
Imports System.Web.UI.WebControls

Namespace IndicadoresAcatlan
    Public Partial Class Calendario
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
            If Not IsPostBack Then
                ValidarAcceso()
                ConfigurarBotones()
                CargarCalendario()
            End If
        End Sub

        Private Sub ValidarAcceso()
            If Session("Usuario") Is Nothing Then
                Response.Redirect("~/Login.aspx")
            End If
        End Sub

        Private Sub ConfigurarBotones()
            Try
                Dim permisos As List(Of String) = DirectCast(Session("Permisos"), List(Of String))
                If permisos IsNot Nothing Then
                    btnGuardar.Visible = permisos.Contains("Guardar")
                    btnEditar.Visible = permisos.Contains("Modificar")
                Else
                    btnGuardar.Visible = False
                    btnEditar.Visible = False
                End If
            Catch ex As Exception
                btnGuardar.Visible = False
                btnEditar.Visible = False
                ScriptManager.RegisterStartupScript(Me, Me.GetType(), "error",
                    "alert('Error al configurar permisos: " & ex.Message & "');", True)
            End Try
        End Sub

        Private Sub CargarCalendario()
            Try
                txtYear.Text = DateTime.Now.Year.ToString()
                txtYear2.Text = txtYear.Text
                txtYear3.Text = txtYear.Text
                txtYear4.Text = txtYear.Text
            Catch ex As Exception
                ScriptManager.RegisterStartupScript(Me, Me.GetType(), "error",
                    "alert('Error al cargar calendario: " & ex.Message & "');", True)
            End Try
        End Sub

        Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
            Try
                ' Aquí irá la lógica para guardar
                ScriptManager.RegisterStartupScript(Me, Me.GetType(), "success",
                    "alert('Datos guardados correctamente');", True)
            Catch ex As Exception
                ScriptManager.RegisterStartupScript(Me, Me.GetType(), "error",
                    "alert('Error al guardar: " & ex.Message & "');", True)
            End Try
        End Sub

        Protected Sub btnEditar_Click(sender As Object, e As EventArgs) Handles btnEditar.Click
            Try
                ' Aquí irá la lógica para editar
                ScriptManager.RegisterStartupScript(Me, Me.GetType(), "success",
                    "alert('Modo edición activado');", True)
            Catch ex As Exception
                ScriptManager.RegisterStartupScript(Me, Me.GetType(), "error",
                    "alert('Error al editar: " & ex.Message & "');", True)
            End Try
        End Sub

        Protected Sub txtYear_TextChanged(sender As Object, e As EventArgs)
            Try
                Dim year As Integer = Convert.ToInt32(txtYear.Text)
                txtYear2.Text = year.ToString()
                txtYear3.Text = year.ToString()
                txtYear4.Text = year.ToString()
            Catch ex As Exception
                ScriptManager.RegisterStartupScript(Me, Me.GetType(), "error",
                    "alert('Por favor ingrese un año válido');", True)
            End Try
        End Sub
    End Class
End Namespace
