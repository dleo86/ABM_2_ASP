using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class modificacionusuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        this.SqlDataSourceServicios.SelectParameters["Cod_servicio"].DefaultValue= this.TextBox1.Text;

        this.SqlDataSourceServicios.DataSourceMode =SqlDataSourceMode.DataReader;

        SqlDataReader registros;
        registros =(SqlDataReader)SqlDataSourceServicios.Select(DataSourceSelectArguments.Empty);

        if (registros.Read())
        {

            this.TextBox2.Text =
            registros["Desc_servicio"].ToString();

            this.DropDownList2.SelectedValue =
            registros["Tipo_servicio"].ToString();

            this.DropDownList1.SelectedValue =
            registros["Rubro"].ToString();

           // this.DropDownList2.DataSource =
            //this.SqlDataTipo;

            //this.DropDownList1.DataSource =
            //this.SqlDataSourceRubros;

            this.DropDownList1.DataTextField = "Desc_rubro";

            this.DropDownList1.DataValueField = "Cod_rubro";

            this.DropDownList2.DataTextField = "Desc_serv";

            this.DropDownList2.DataValueField = "Cod_serv";

            this.DropDownList1.DataBind();
            this.DropDownList2.DataBind();
        }

        else

            this.Label1.Text = "No existe el servicio con dicho código";

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        this.SqlDataSourceServicios.UpdateParameters["Desc_servicio"].DefaultValue = this.TextBox2.Text;

        this.SqlDataSourceServicios.UpdateParameters["Tipo_servicio"].DefaultValue = this.DropDownList2.SelectedValue;

        this.SqlDataSourceServicios.UpdateParameters["Rubro"].DefaultValue = this.DropDownList1.SelectedValue;

        this.SqlDataSourceServicios.UpdateParameters["Cod_servicio"].DefaultValue =this.TextBox1.Text;

        int cant;
        cant = this.SqlDataSourceServicios.Update();

        if (cant == 1)

            this.Label1.Text = "Se modifico el servicio";

        else

            this.Label1.Text = "No existe el codigo";


    }
}