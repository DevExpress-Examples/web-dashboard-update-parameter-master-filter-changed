<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.Master" CodeBehind="Default.aspx.cs" Inherits="DXApplication33.Default" %>

<%@ Register Assembly="DevExpress.Dashboard.v24.2.Web.WebForms, Version=24.2.1.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Content/script.js"></script>
    <dx:ASPxDashboard ID="ASPxDashboard1" runat="server" Width="100%" Height="100%" DashboardStorageFolder="~/App_Data/Dashboards/" WorkingMode="Viewer"
        ClientInstanceName="dashboard" OnSetInitialDashboardState="ASPxDashboard1_SetInitialDashboardState">
        <ClientSideEvents BeforeRender="onBeforeRender" />
    </dx:ASPxDashboard>
</asp:Content>
