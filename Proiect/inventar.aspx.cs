using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
    using System.IO;

namespace Proiect
{
    public partial class inventar : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfAnimalExist())
            {
                Response.Write("<script>alert('Acest animal deja exista');</script>");
            }
            else
            {
                adaugaAnimal();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        bool checkIfAnimalExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from inventar_tb where ID='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                   
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void adaugaAnimal()
        {
            try
            {
                string genres = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    genres = genres + ListBox1.Items[i] + ",";
                }

                genres = genres.Remove(genres.Length - 1);

                string filepath = "~/imaginventar/pisica.jpg";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("imaginventar/" + filename));
                filepath = "~/imaginventar/" + filename;


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO inventar_tb(ID, Rasa, Data_inscrierii, Tip, Descriere, Imagine) values (@ID, @Rasa, @Data_inscrierii, @Tip, @Descriere, @Imagine)", con);


                cmd.Parameters.AddWithValue("@ID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Rasa", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@data_inscrierii", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@descriere", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Tip", genres);
                cmd.Parameters.AddWithValue("@Imagine", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Adaugat cu succes.');</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            
           
        }
    }
}