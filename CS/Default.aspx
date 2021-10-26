<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Dashboard.v21.1.Web.WebForms, Version=21.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var dashboardControl;

        function onBeforeRender(s, e) {
            dashboardControl = s.GetDashboardControl();
            var viewerApiExtension = dashboardControl.findExtension('viewerApi');
            if (viewerApiExtension)
                viewerApiExtension.on('itemMasterFilterStateChanged', onItemMasterFilterStateChanged);
        }

        function onItemMasterFilterStateChanged(e) {
            if (e.itemName == "gridDashboardItem1") {
                var dashboardParameterDialogExtension = dashboardControl.findExtension('dashboardParameterDialog');
                var parameters = dashboardParameterDialogExtension.getParameters();
                var parameter1 = parameters.getParameterByName("OrderID");
                parameter1.setValue(e.values[0][0]);
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxDashboard ID="ASPxDashboard1" runat="server" DashboardStorageFolder="~/App_Data/Dashboards/" WorkingMode="ViewerOnly"
            ClientInstanceName="dashboard" OnSetInitialDashboardState="ASPxDashboard1_SetInitialDashboardState">
            <ClientSideEvents BeforeRender="onBeforeRender"  />
        </dx:ASPxDashboard>
    </form>
</body>
</html>
