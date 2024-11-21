'Imports System.Data
'Imports System.Data.SqlClient
'Imports System.Configuration
'Imports System.IO

'Public Class DBconexion
'    Private conexion As SqlConnection
'    Private direccion As ConnectionStringSettings

'    ' Constructor: Inicializa la conexión usando la cadena de conexión del Web.config
'    Public Sub New()
'        Try
'            direccion = ConfigurationManager.ConnectionStrings("PIFAConnection")
'            If direccion Is Nothing Then
'                Throw New ConfigurationErrorsException("No se encontró la cadena de conexión 'PIFAConnection' en el Web.config")
'            End If
'            conexion = New SqlConnection(direccion.ConnectionString)
'        Catch ex As Exception
'            Throw New Exception("Error al inicializar la conexión a la base de datos: " & ex.Message)
'        End Try
'    End Sub

'    ' Abre la conexión solo si está cerrada para evitar errores
'    Public Sub AbrirConexion()
'        If conexion.State = ConnectionState.Closed Then
'            conexion.Open()
'        End If
'    End Sub

'    ' Cierra la conexión si está abierta para liberar recursos
'    Public Sub CerrarConexion()
'        If conexion.State = ConnectionState.Open Then
'            conexion.Close()
'        End If
'    End Sub

'    ' Ejecuta comandos INSERT, UPDATE o DELETE y retorna el número de filas afectadas
'    ' query: consulta SQL parametrizada
'    ' parametros: array de parámetros SQL para prevenir inyección SQL
'    Public Function EjecutarComando(query As String, parametros As SqlParameter()) As Integer
'        Try
'            Using cmd As New SqlCommand(query, conexion)
'                cmd.Parameters.AddRange(parametros)
'                AbrirConexion()
'                Return cmd.ExecuteNonQuery()
'            End Using
'        Finally
'            CerrarConexion()
'        End Try
'    End Function

'    ' Ejecuta consultas SELECT y retorna un DataTable con los resultados
'    ' query: consulta SQL parametrizada
'    ' parametros: array de parámetros SQL para prevenir inyección SQL
'    Public Function EjecutarConsulta(query As String, parametros As SqlParameter()) As DataTable
'        Dim dt As New DataTable()
'        Try
'            Using cmd As New SqlCommand(query, conexion)
'                cmd.Parameters.AddRange(parametros)
'                Using da As New SqlDataAdapter(cmd)
'                    AbrirConexion()
'                    da.Fill(dt)
'                End Using
'            End Using
'        Finally
'            CerrarConexion()
'        End Try
'        Return dt
'    End Function
'End Class