Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO


Public Class DBconexion

    Dim conexion As New SqlConnection()
    Dim direccion As ConnectionStringSettings
    Dim comando As SqlCommand
    Sub conectar()

        'obtener nombre de la conexion desde el app config
        direccion = ConfigurationManager.ConnectionStrings("nombre de la conexion")
        conexion.ConnectionString = direccion.ConnectionString
        conexion.Open()
        MsgBox("CONEXION EXITOSA")
    End Sub

End Class

'Public Class desconectar(Of)
'    Dim conexion As New SqlConnection()
'    conexion.Close()

'End Class