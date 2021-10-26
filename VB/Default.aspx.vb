Imports Microsoft.VisualBasic
Imports DevExpress.DashboardCommon
Imports DevExpress.DashboardWeb
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Sub ASPxDashboard1_SetInitialDashboardState(ByVal sender As Object, ByVal e As SetInitialDashboardStateEventArgs)
		e.InitialState = InitializeDashboardState()
	End Sub

	Public Function InitializeDashboardState() As DashboardState
		Dim dashboardState As New DashboardState()

		Dim parameterState As New DashboardParameterState("OrderID", "10253", GetType(Integer))

		Dim gridFilterState As New DashboardItemState("gridDashboardItem1")
		gridFilterState.MasterFilterValues.Add(New Object() { 10253, "Hanari Carnes" })

		dashboardState.Parameters.Add(parameterState)
			 dashboardState.Items.Add(gridFilterState)
		Return dashboardState
	End Function

End Class