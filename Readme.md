<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T575012)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# Dashboard for Web Forms - How to update the dashboard parameter value when the item's master filter state is changed
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/128580393/)**
<!-- run online end -->

This example illustrates how to pass master filter values to a hidden dashboard parameter. 

![Web Dashboard](web-dashboard.png)


The **Orders** grid item is bound to the **Orders** data source. The **Details** pie item is bound to the **CustOrdersDetail** data source. The grid's master filter values are passed to the **OrderID** dashboard parameter. The **OrderID** dashboard parameter is used to [filter](https://docs.devexpress.com/Dashboard/117192) the **CustOrdersDetail** data source (the **OrderIDParameter** query parameter is mapped to the **OrderID** dashboard parameter):

![Data Source Filter](data-source-filter.png)


The [ViewerApiExtensionOptions.onItemMasterFilterStateChanged](https://docs.devexpress.com/Dashboard/js-DevExpress.Dashboard.ViewerApiExtensionOptions?p=netframework#js_devexpress_dashboard_viewerapiextensionoptions_onitemmasterfilterstatechanged) event handler obtains changed master filter values. The [DashboardParameterDialogExtension.getParameters](https://docs.devexpress.com/Dashboard/js-DevExpress.Dashboard.DashboardParameterDialogExtension?p=netframework#js_devexpress_dashboard_dashboardparameterdialogextension_getparameters) method obtains the dashboard  The [DashboardParameter.setValue](https://docs.devexpress.com/Dashboard/js-DevExpress.Dashboard.DashboardParameter#js_devexpress_dashboard_dashboardparameter_setvalue_value_) method passes these values to the **OrderID** dashboard parameter:

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

The initial master filter state is set manually on page loading. To assign default master filter values, use the [Dashboard State](https://docs.devexpress.com/Dashboard/118733/web-dashboard/aspnet-web-forms-dashboard-control/manage-dashboard-state).


## Files to Review

* [Default.aspx](./CS/DXApplication33/Default.aspx) (VB: [Default.aspx](./VB/DXApplication33/Default.aspx))
* [Default.aspx.cs](./CS/DXApplication33/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/DXApplication33/Default.aspx.vb))

## Documentation

- [Configure Query Parameters](https://docs.devexpress.com/Dashboard/117192/web-dashboard/create-dashboards-on-the-web/providing-data/working-with-sql-data-sources/pass-query-parameters?p=netframework)
- [Dashboard Parameters](https://docs.devexpress.com/Dashboard/117062/web-dashboard/create-dashboards-on-the-web/data-analysis/dashboard-parameters?p=netframework)
- [Manage Dashboard State](https://docs.devexpress.com/Dashboard/118733/web-dashboard/aspnet-web-forms-dashboard-control/manage-dashboard-state)

## More Examples

- [Dashboard for Web Forms - How to specify a default dashboard state in code](https://github.com/DevExpress-Examples/web-forms-dashboard-specify-default-dashboard-state-in-code)
- [Dashboard for Web Forms - How to specify dashboard parameter values on the client side](https://github.com/DevExpress-Examples/aspxdashboard-how-to-specify-dashboard-parameter-values-on-the-client-side-t495684)
