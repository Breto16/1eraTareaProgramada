using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP1BD1
{
    public partial class Insertar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_Insertar_Click(object sender, EventArgs e)
        {
            if (txt_Nombre.Text == "" || txt_Precio.Text == "")
            {
                lbl_Errors.ForeColor = System.Drawing.Color.DarkRed;
                lbl_Errors.Text = "Uno o más espacios están vacíos";
            }
            else
            {
                try
                {
                    string ipAddress = Request.UserHostAddress;
                    SqlConnection con = new SqlConnection("Data Source=BRETONDESKTOP\\SQLEXPRESS;" +
                        "Initial Catalog=TP1BD1;Integrated Security=True");
                    SqlCommand cmd = new SqlCommand("SPAgregarArticulo", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@inNombre", SqlDbType.VarChar, 128).Value = txt_Nombre.Text;
                    cmd.Parameters.Add("@inPrecio", SqlDbType.Money).Value = txt_Precio.Text;
                    cmd.Parameters.Add("@inUserId", SqlDbType.VarChar, 64).Value = 1;
                    cmd.Parameters.Add("@inIP", SqlDbType.VarChar, 64).Value = ipAddress;
                    cmd.Parameters.Add("@outResultCode", SqlDbType.Int).Value = 0;

                    con.Open();

                    int FilasAfectadas = cmd.ExecuteNonQuery();
                    if (FilasAfectadas > 0)
                    {
                        lbl_Errors.ForeColor = System.Drawing.Color.Green;
                        lbl_Errors.Text = "Inserción Realizada Correctamente";
                    }
                    else
                    {
                        lbl_Errors.ForeColor = System.Drawing.Color.DarkRed;
                        lbl_Errors.Text = "Artículo Repetido | No se realizó la inserción";
                    }
                    con.Close();
                }catch (Exception ex)
                {
                    lbl_Errors.ForeColor=System.Drawing.Color.Red;
                    lbl_Errors.Text = ex.Message;
                }
            }

        }

        protected void btn_Cerrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}