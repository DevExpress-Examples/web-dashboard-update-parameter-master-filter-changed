<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Dashboard.v17.1.Web, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function OnItemMasterFilterStateChanged(s, e) {
            if (e.ItemName == "gridDashboardItem1") {
                var parameters = dashboard.GetParameters();
                var parameter1 = parameters.GetParameterByName("OrderID");
                parameter1.SetValue(e.Values[0][0]);
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxDashboard ID="ASPxDashboard1" runat="server" DashboardStorageFolder="~/App_Data/Dashboard/" WorkingMode="ViewerOnly"
            ClientInstanceName="dashboard" OnSetInitialDashboardState="ASPxDashboard1_SetInitialDashboardState">
            <ClientSideEvents ItemMasterFilterStateChanged="OnItemMasterFilterStateChanged" />
        </dx:ASPxDashboard>
    </form>
</body>
</html>
