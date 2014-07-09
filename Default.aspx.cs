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
        //this.HtmlEditor1.UrLstr = "kindeditor";
        HtmlEditor2.ReadOnly = true;
        if(!IsPostBack)
            this.HtmlEditor1.Text = "123123#zsfh##xkhks##xkhjs#";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write(HtmlEditor1.Text);//如果有html代码输出，会有『检测到有潜在危险的 Request.Form 值』错误，属于正常
    }
}