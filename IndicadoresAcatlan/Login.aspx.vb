﻿Partial Class Login
    Inherits System.Web.UI.Page
    Public Enum TipoUsuario
        Administrador = 1
        Captura = 2
        Validador = 3
    End Enum
    Public Class UsuarioInfo
        Public Property Usuario As String
        Public Property Password As String
        Public Property TipoUsuario As TipoUsuario
        Public Property Permisos As List(Of String)

        Public Sub New(usuario As String, password As String, tipo As TipoUsuario)
            Me.Usuario = usuario
            Me.Password = password
            Me.TipoUsuario = tipo
        End Sub
    End Class

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Try

            If String.IsNullOrEmpty(txtUsuario.Text.Trim()) OrElse String.IsNullOrEmpty(txtPassword.Text.Trim()) Then
                MostrarMensajeError("Por favor ingrese usuario y contraseña.")
                Return
            End If

            Dim usuario As String = txtUsuario.Text.Trim()
            Dim password As String = txtPassword.Text.Trim()

            ' Verifica que si sea el usuario y Obtiene el tipo de usuario que es para redirigirlo a la pagina correspondiente
            Dim usuarioInfo As UsuarioInfo = ValidarUsuarioYContrasena(usuario, password)

            If usuarioInfo IsNot Nothing Then
                Session("Usuario") = usuario
                Session("TipoUsuario") = usuarioInfo.TipoUsuario
                Session("Permisos") = usuarioInfo.Permisos

                ' Segun el tipo de usuario lo manda a diferentes paginas
                Select Case usuarioInfo.TipoUsuario
                    Case TipoUsuario.Administrador
                        Response.Redirect("~/Default.aspx", False)
                    Case TipoUsuario.Captura
                        Response.Redirect("~/Indicadores/Indicadores.aspx", False)
                    Case TipoUsuario.Validador
                        Response.Redirect("~/Indicadores/Indicadores.aspx", False)
                End Select

                Context.ApplicationInstance.CompleteRequest()
            Else
                MostrarMensajeError("Usuario o contraseña incorrectos.")
                txtPassword.Text = String.Empty
            End If

        Catch ex As Exception
            System.Diagnostics.Debug.WriteLine($"Error en login: {ex.Message}")
            MostrarMensajeError("Ocurrió un error al intentar ingresar. Por favor intente nuevamente.")
        End Try
    End Sub

    Private Function ValidarUsuarioYContrasena(ByVal usuario As String, ByVal password As String) As UsuarioInfo
        ' En cuanto se haga la conexión con base se modificara esta parte segun corresponda
        Dim usuarios As New List(Of UsuarioInfo) From {
            New UsuarioInfo("ADMIN", "123", TipoUsuario.Administrador),
            New UsuarioInfo("CAPT", "123", TipoUsuario.Captura),
            New UsuarioInfo("USER", "123", TipoUsuario.Validador)
        }

        Return usuarios.Find(Function(u) u.Usuario.Equals(usuario, StringComparison.OrdinalIgnoreCase) AndAlso
                                      u.Password = password)
    End Function

    Private Sub MostrarMensajeError(mensaje As String)
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "showError",
            $"alert('{mensaje.Replace("'", "\'")}');", True)
    End Sub
End Class