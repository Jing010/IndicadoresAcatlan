Public Class Programas
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    'Segun cada una de las areas se haran cambios
    Protected Sub Educación_de_Licenciatura(sender As Object, e As EventArgs) Handles btn10.Click
        Response.Redirect("~/Indicadores/Indicadores.aspx", False)
    End Sub
    Protected Sub Educación_de_Posgrado(sender As Object, e As EventArgs) Handles btn11.Click
        Response.Redirect("~/Indicadores/Indicadores.aspx", False)
    End Sub
End Class