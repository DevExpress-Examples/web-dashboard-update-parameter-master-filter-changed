using DevExpress.DashboardCommon;
using DevExpress.DashboardWeb;
using DevExpress.DataAccess.Excel;
using DevExpress.DataAccess.Sql;
using System;
using System.Web.Hosting;

namespace DXApplication33 {
    public partial class Default : System.Web.UI.Page {
        protected void ASPxDashboard1_SetInitialDashboardState(object sender, SetInitialDashboardStateEventArgs e) {
            e.InitialState = InitializeDashboardState();
        }

        public DashboardState InitializeDashboardState() {
            DashboardState dashboardState = new DashboardState();

            DashboardParameterState parameterState = new DashboardParameterState("OrderID", "10253", typeof(int));

            DashboardItemState gridFilterState = new DashboardItemState("gridDashboardItem1");
            gridFilterState.MasterFilterValues.Add(new object[] { 10253, "Hanari Carnes" });

            dashboardState.Parameters.Add(parameterState);
            dashboardState.Items.Add(gridFilterState);
            return dashboardState;
        }
    }
}