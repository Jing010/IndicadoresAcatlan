Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Dim usuario As String = txtUsuario.Text
        Dim password As String = txtPassword.Text
        Dim isValid As Boolean = ValidarUsuarioYContrasena(usuario, password)

        If isValid Then
            Response.Redirect("~/Default.aspx")
        Else
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "showError", "alert('Usuario o contraseña incorrectos.');", True)
        End If
    End Sub

    Private Function ValidarUsuarioYContrasena(ByVal usuario As String, ByVal password As String) As Boolean

        Return usuario = "admin" AndAlso password = "pass"
    End Function
End Class