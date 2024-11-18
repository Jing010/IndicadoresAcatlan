Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO

Public Class DataSet
    Sub insertar(logro As Double, causa As String, plnAcn As String)
        'Dim conectar As Comunes.DBconexion
        'Dim direccion As ConnectionStringSettings
        'Dim comando As SqlCommand
        'conectar()
        'comando = New SqlCommand("insert into database values(" + logro + "," + causa + "," + plnAcn + ")", conexion)
        'comando.ExecuteNonQuery()
        'desconectar()

    End Sub

    Sub desconectar()
        Dim conexion As New SqlConnection()
        conexion.Close()

    End Sub
End Class
