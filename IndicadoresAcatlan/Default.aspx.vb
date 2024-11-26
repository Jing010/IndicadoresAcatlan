Public Class _Default
    Inherits Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnPrograms.Click
        Response.Redirect("~/Programas/Programas.aspx", False)
    End Sub

    Protected Sub btnCalendario(sender As Object, e As EventArgs) Handles btnCalendario.Click
        Response.Redirect("~/Calendario/Calendario.aspx")
    End Sub

End Class