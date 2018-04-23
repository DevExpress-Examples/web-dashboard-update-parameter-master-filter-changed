using DevExpress.DashboardCommon;
using DevExpress.DashboardWeb;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ASPxDashboard1_SetInitialDashboardState(object sender, SetInitialDashboardStateEventArgs e)
    {
        e.InitialState = InitializeDashboardState();
    }

    public DashboardState InitializeDashboardState()
    {
        DashboardState dashboardState = new DashboardState();

        DashboardParameterState parameterState = new DashboardParameterState("OrderID", "10253", typeof(int));

        DashboardItemState gridFilterState = new DashboardItemState("gridDashboardItem1");
        gridFilterState.MasterFilterValues.Add(new object[] { 10253, "Hanari Carnes" });

        dashboardState.Parameters.Add(parameterState);
             dashboardState.Items.Add(gridFilterState);
        return dashboardState;
    }

}