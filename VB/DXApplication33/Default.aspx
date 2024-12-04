<%@ Page Language="VB" AutoEventWireup="true" MasterPageFile="~/Main.Master" CodeBehind="Default.aspx.vb" Inherits="DXApplication33.Default" %>

<%@ Register Assembly="DevExpress.Dashboard.v24.2.Web.WebForms, Version=24.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
    <dx:ASPxDashboard ID="ASPxDashboard1" runat="server" Width="100%" Height="100%" DashboardStorageFolder="~/App_Data/Dashboards/" WorkingMode="ViewerOnly"
        ClientInstanceName="dashboard" OnSetInitialDashboardState="ASPxDashboard1_SetInitialDashboardState">
        <ClientSideEvents BeforeRender="onBeforeRender" />
    </dx:ASPxDashboard>
</asp:Content>
