using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieCollection
{
    public partial class RegisterMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=MoviesDB;Integrated Security=True");
        protected void ButtonCreateMovie_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into MovieInfo_table values(" +
                "'"+movieTitle.Text+"'," +
                " '"+int.Parse(movieYear.Text)+"'," +
                " '"+movieDirector.Text+"'," +
                " '"+movieScore.SelectedValue+"')"
                , con);

            comm.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully created');", true);
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update MovieInfo_table set " +
                "Title = '" + movieTitle.Text + "'," +
                "Year = '" + int.Parse(movieYear.Text) + "'," +
                "Director = '" + movieDirector.Text + "'," +
                "Score =  '" + movieScore.SelectedValue + 
                "'where Title = '"+ movieTitle.Text +"'", con);


            comm.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully updated');", true);
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Delete MovieInfo_table where Title = '" + movieTitle.Text + "'", con);

            comm.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully deleted');", true);
        }
    }
}