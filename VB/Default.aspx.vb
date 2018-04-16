Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Xpo
Imports System.Collections.Generic

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected session1 As Session

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
        session1 = New Session()
        XpoDataSource1.Session = session1
    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As EventArgs)
        Dim list As New List(Of nwind.Products)()
        Dim i As Integer = ASPxGridView1.VisibleStartIndex
        Do While i < ASPxGridView1.SettingsPager.PageSize + ASPxGridView1.VisibleStartIndex
            If Not ASPxGridView1.IsGroupRow(i) Then
                list.Add(CType(ASPxGridView1.GetRow(i), nwind.Products))
            End If
            i += 1
        Loop
        WebChartControl1.DataSource = list
        WebChartControl1.DataBind()
    End Sub

End Class
