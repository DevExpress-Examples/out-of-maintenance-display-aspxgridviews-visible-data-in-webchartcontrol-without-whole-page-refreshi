using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Xpo;
using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page {
    protected Session session1;

    protected void Page_Init(object sender, EventArgs e) {
        session1 = new Session();
        XpoDataSource1.Session = session1;
    }

    protected void Page_PreRender(object sender, EventArgs e) {
        List<nwind.Products> list = new List<nwind.Products>();
        for (int i = ASPxGridView1.VisibleStartIndex; i < ASPxGridView1.SettingsPager.PageSize + ASPxGridView1.VisibleStartIndex; i++) {
            if (!ASPxGridView1.IsGroupRow(i))
                list.Add((nwind.Products)ASPxGridView1.GetRow(i));
        }
        WebChartControl1.DataSource = list;
        WebChartControl1.DataBind();
    }

}
