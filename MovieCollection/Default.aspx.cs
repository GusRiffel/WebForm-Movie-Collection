using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieCollection
{
    public partial class _Default : Page
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=MoviesDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("Select * from MovieInfo_table", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}