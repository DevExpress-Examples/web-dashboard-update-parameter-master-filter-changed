<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128580393/24.2.1%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T575012)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# Dashboard for Web Forms - How to update the dashboard parameter value when the item's master filter state is changed

This example illustrates how to pass master filter values to a hidden dashboard parameter. 

![Web Dashboard](web-dashboard.png)


The **Orders** grid item is bound to the **Orders** data source, and the **Details** pie item is bound to the **CustOrdersDetail** data source. The grid's master filter values are passed to the **OrderID** dashboard parameter that is used to [filter](https://docs.devexpress.com/Dashboard/117192) the **CustOrdersDetail** data source (the **OrderIDParameter** query parameter is mapped to the **OrderID** dashboard parameter):

![Data Source Filter](data-source-filter.png)


The [ViewerApiExtensionOptions.onItemMasterFilterStateChanged](https://docs.devexpress.com/Dashboard/js-DevExpress.Dashboard.ViewerApiExtensionOptions?p=netframework#js_devexpress_dashboard_viewerapiextensionoptions_onitemmasterfilterstatechanged) event handler obtains changed master filter values. The [DashboardParameterDialogExtension.getParameters](https://docs.devexpress.com/Dashboard/js-DevExpress.Dashboard.DashboardParameterDialogExtension?p=netframework#js_devexpress_dashboard_dashboardparameterdialogextension_getparameters) method obtains the dashboard parameters. The [DashboardParameter.setValue](https://docs.devexpress.com/Dashboard/js-DevExpress.Dashboard.DashboardParameter#js_devexpress_dashboard_dashboardparameter_setvalue_value_) method passes master filter's values to the **OrderID** dashboard parameter:

```js
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
```

The default master filter and dashboard parameter values are specified in the [dashboard state](https://docs.devexpress.com/Dashboard/118733/web-dashboard/aspnet-web-forms-dashboard-control/manage-dashboard-state).

## Files to Review

* [script.js](./CS/DXApplication33/Content/script.js)
* [Default.aspx](./CS/DXApplication33/Default.aspx) (VB: [Default.aspx](./VB/DXApplication33/Default.aspx))
* [Default.aspx.cs](./CS/DXApplication33/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/DXApplication33/Default.aspx.vb))

## Documentation

- [Configure Query Parameters](https://docs.devexpress.com/Dashboard/117192/web-dashboard/create-dashboards-on-the-web/providing-data/working-with-sql-data-sources/pass-query-parameters?p=netframework)
- [Dashboard Parameters](https://docs.devexpress.com/Dashboard/117062/web-dashboard/create-dashboards-on-the-web/data-analysis/dashboard-parameters?p=netframework)
- [Manage Dashboard State](https://docs.devexpress.com/Dashboard/118733/web-dashboard/aspnet-web-forms-dashboard-control/manage-dashboard-state)

## More Examples

- [Dashboard for ASP.NET Core - How to update the parameter value when the item's master filter state is changed](https://github.com/DevExpress-Examples/asp-net-core-dashboard-update-parameter-master-filter-changed)
- [Dashboard for Web Forms - How to specify a default dashboard state in code](https://github.com/DevExpress-Examples/web-forms-dashboard-specify-default-dashboard-state-in-code)
- [Dashboard for Web Forms - How to specify dashboard parameter values on the client side](https://github.com/DevExpress-Examples/aspxdashboard-how-to-specify-dashboard-parameter-values-on-the-client-side-t495684)
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=web-forms-dashboard-update-parameter-master-filter-changed&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=web-forms-dashboard-update-parameter-master-filter-changed&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
