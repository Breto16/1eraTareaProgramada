using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP1BD1
{
    public partial class windows_f : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Cerrar_Click(object sender, EventArgs e)
        {
            System.Environment.Exit(0);
        }

        protected void btn_Insertar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Insertar.aspx");
        }
    }
}