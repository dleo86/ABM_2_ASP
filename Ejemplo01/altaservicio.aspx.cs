using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class altausuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        this.SqlDataServicios.InsertParameters["Desc_servicio"].DefaultValue = this.TextBox1.Text;
        this.SqlDataServicios.InsertParameters["Tipo_servicio"].DefaultValue = this.DropDownList2.SelectedValue;

        this.SqlDataServicios.InsertParameters["Rubro"].DefaultValue = this.DropDownList1.SelectedValue;

        this.SqlDataServicios.Insert();

        this.Label1.Text = "se efectuó la carga";

        this.TextBox1.Text = "";

        this.TextBox1.Text = "";


    }
}