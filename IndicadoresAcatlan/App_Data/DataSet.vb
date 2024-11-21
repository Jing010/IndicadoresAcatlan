'Imports System.Data
'Imports System.Data.SqlClient

'Public Class DataSet
'    Private db As New DBconexion()

'    Public Function ObtenerIndicadores() As DataTable
'        Dim query As String = "SELECT 
'                                Clave,
'                                Descripcion AS Indicador,
'                                LogroT1,
'                                ProyT2,
'                                LogroT2,
'                                Causa,
'                                PlanAccion
'                             FROM Indicadores"
'        Return db.EjecutarConsulta(query, New SqlParameter() {})
'    End Function

'    Public Function InsertarIndicador(clave As String, proyT2 As Double, logroT2 As Double, causa As String, planAccion As String) As Integer
'        Dim query As String = "INSERT INTO Indicadores (
'                                Clave, 
'                                ProyT2, 
'                                LogroT2, 
'                                Causa, 
'                                PlanAccion,
'                                FechaActualizacion
'                             ) VALUES (
'                                @Clave, 
'                                @ProyT2, 
'                                @LogroT2, 
'                                @Causa, 
'                                @PlanAccion,
'                                GETDATE()
'                             )"

'        Dim parametros As SqlParameter() = {
'            New SqlParameter("@Clave", SqlDbType.VarChar, 50) With {.Value = clave},
'            New SqlParameter("@ProyT2", SqlDbType.Decimal) With {.Value = proyT2},
'            New SqlParameter("@LogroT2", SqlDbType.Decimal) With {.Value = logroT2},
'            New SqlParameter("@Causa", SqlDbType.VarChar, -1) With {.Value = If(String.IsNullOrEmpty(causa), DBNull.Value, causa)},
'            New SqlParameter("@PlanAccion", SqlDbType.VarChar, -1) With {.Value = If(String.IsNullOrEmpty(planAccion), DBNull.Value, planAccion)}
'        }

'        Return db.EjecutarComando(query, parametros)
'    End Function

'    Public Function ActualizarIndicador(clave As String, proyT2 As Double, logroT2 As Double, causa As String, planAccion As String) As Integer
'        Dim query As String = "UPDATE Indicadores 
'                             SET ProyT2 = @ProyT2, 
'                                 LogroT2 = @LogroT2, 
'                                 Causa = @Causa, 
'                                 PlanAccion = @PlanAccion,
'                                 FechaActualizacion = GETDATE()
'                             WHERE Clave = @Clave"

'        Dim parametros As SqlParameter() = {
'            New SqlParameter("@Clave", SqlDbType.VarChar, 50) With {.Value = clave},
'            New SqlParameter("@ProyT2", SqlDbType.Decimal) With {.Value = proyT2},
'            New SqlParameter("@LogroT2", SqlDbType.Decimal) With {.Value = logroT2},
'            New SqlParameter("@Causa", SqlDbType.VarChar, -1) With {.Value = If(String.IsNullOrEmpty(causa), DBNull.Value, causa)},
'            New SqlParameter("@PlanAccion", SqlDbType.VarChar, -1) With {.Value = If(String.IsNullOrEmpty(planAccion), DBNull.Value, planAccion)}
'        }

'        Return db.EjecutarComando(query, parametros)
'    End Function
'End Class
