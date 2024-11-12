Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Public Class GestionGrid
    Private connectionString As String = ConfigurationManager.ConnectionStrings("ConexionABase").ConnectionString

    ' Función llenado de GridView
    Public Sub LlenarGrid(ByRef gvDatos As GridView, ByVal consultaSQL As String, Optional ByVal parametros As List(Of SqlParameter) = Nothing)
        Try
            Using conn As New SqlConnection(connectionString)
                Using cmd As New SqlCommand(consultaSQL, conn)
                    ' Agregar parametros
                    If parametros IsNot Nothing Then
                        For Each param In parametros
                            cmd.Parameters.Add(param)
                        Next
                    End If

                    Dim da As New SqlDataAdapter(cmd)
                    Dim dt As New DataTable()
                    da.Fill(dt)


                    With gvDatos
                        .DataSource = dt
                        .DataBind()
                        .EnableViewState = True
                        .CssClass = "table table-striped table-bordered"
                        .HeaderStyle.CssClass = "thead-dark"
                        .AllowPaging = True
                        .PageSize = 10
                        .AllowSorting = True
                    End With
                End Using
            End Using

        Catch ex As Exception
            Throw New Exception("Error al cargar los datos en el GridView: " & ex.Message)
        End Try
    End Sub

    Public Sub ExportarAExcel(ByRef gvDatos As GridView, ByVal nombreArchivo As String)
        Try
            HttpContext.Current.Response.Clear()
            HttpContext.Current.Response.Buffer = True
            HttpContext.Current.Response.AddHeader("content-disposition", "attachment;filename=" & nombreArchivo & ".xls")
            HttpContext.Current.Response.Charset = ""
            HttpContext.Current.Response.ContentType = "application/vnd.ms-excel"

            Using sw As New StringWriter()
                Using htw As New HtmlTextWriter(sw)
                    Dim table As New Table()
                    table.GridLines = gvDatos.GridLines

                    gvDatos.RenderControl(htw)

                    HttpContext.Current.Response.Output.Write(sw.ToString())
                    HttpContext.Current.Response.Flush()
                    HttpContext.Current.Response.End()
                End Using
            End Using

        Catch ex As Exception
            Throw New Exception("Error al exportar a Excel: " & ex.Message)
        End Try
    End Sub
End Class