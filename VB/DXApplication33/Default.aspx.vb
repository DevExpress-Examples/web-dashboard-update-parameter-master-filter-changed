Imports DevExpress.DashboardCommon
Imports DevExpress.DashboardWeb
Imports System

Namespace DXApplication33

    Public Partial Class [Default]
        Inherits Web.UI.Page

        Protected Sub ASPxDashboard1_SetInitialDashboardState(ByVal sender As Object, ByVal e As SetInitialDashboardStateEventArgs)
            e.InitialState = InitializeDashboardState()
        End Sub

        Public Function InitializeDashboardState() As DashboardState
            Dim dashboardState As DashboardState = New DashboardState()
            Dim parameterState As DashboardParameterState = New DashboardParameterState("OrderID", "10253", GetType(Integer))
            Dim gridFilterState As DashboardItemState = New DashboardItemState("gridDashboardItem1")
            gridFilterState.MasterFilterValues.Add(New Object() {10253, "Hanari Carnes"})
            dashboardState.Parameters.Add(parameterState)
            dashboardState.Items.Add(gridFilterState)
            Return dashboardState
        End Function
    End Class
End Namespace
