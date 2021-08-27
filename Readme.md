<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128580393/17.1.8%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T575012)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# How to update the parameter value when the item's master filter state is changed
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t575012/)**
<!-- run online end -->


<p>This example illustrates how to pass filter values to a parameter. The initial master filter state is set manually on page loading.<br><br>To obtain changed master filter values, handle the <a href="https://documentation.devexpress.com/#Dashboard/DevExpressDashboardWebScriptsASPxClientDashboard_ItemMasterFilterStateChangedtopic">ASPxClientDashboard.ItemMasterFilterStateChanged</a> event. Pass these values to the dashboard parameter using the <a href="https://documentation.devexpress.com/#Dashboard/DevExpressDashboardWebScriptsASPxClientDashboard_GetParameterstopic">ASPxClientDashboard.GetParameters</a> method. <br>To assign default master filter values, use <a href="https://documentation.devexpress.com/Dashboard/118733/Preparing-the-Designer-and-Viewer-Applications/Web-Dashboard/Manage-Dashboard-State">the Dashboard State</a>. Refer to the <a href="https://www.devexpress.com/Support/Center/p/T513681">Web Dashboard - How to specify a dashboard state manually in code</a> example for more information about this approach.<br><br><strong>See also:</strong><br><a href="https://www.devexpress.com/Support/Center/p/T495684">How to specify dashboard parameter values on the client side in the ASP.NET Dashboard Control</a></p>


<h3>Description</h3>

To obtain changed master filter values, handle the&nbsp;<a href="https://documentation.devexpress.com/#Dashboard/DevExpressDashboardWebScriptsASPxClientDashboard_ItemMasterFilterStateChangedtopic">ASPxClientDashboard.ItemMasterFilterStateChanged</a>&nbsp;event.&nbsp;Pass these values to the dashboard parameter using&nbsp;the&nbsp;<a href="https://documentation.devexpress.com/#Dashboard/DevExpressDashboardWebScriptsASPxClientDashboard_GetParameterstopic">ASPxClientDashboard.GetParameters</a>&nbsp;method.&nbsp;<br>To assign default master filter values, use&nbsp;<a href="https://documentation.devexpress.com/Dashboard/118733/Preparing-the-Designer-and-Viewer-Applications/Web-Dashboard/Manage-Dashboard-State">the Dashboard State</a>. Refer to the&nbsp;<a data-ticket="T513681">Web Dashboard - How to specify a dashboard state manually in code</a>&nbsp;example for more information about this approach.

<br/>


