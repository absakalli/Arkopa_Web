using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Arkopa_Web
{
    public partial class _Default : Page
    {
        SqlConnection Baglanti = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            ReadFile();
        }

        public void SqlCon(string sv,string db)
        {
            try
            {
                string baglantiadresi = String.Format("Data Source={0};Initial Catalog={1};Integrated Security=true;", sv, db);
                Baglanti.ConnectionString = baglantiadresi;
                Baglanti.Open();
            }
            catch (Exception e)
            {
                Response.Write("<script>alert('Database Baglanamadi.');</script>");
            }
        }

        public void ReadFile()
        {
            string path = AppDomain.CurrentDomain.BaseDirectory + "deneme.ini";
            string[] text = System.IO.File.ReadAllText(path).Split(',');
            string sv = text[0];
            string db = text[1];
            SqlCon(sv, db);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                double cevrimsuresi1 = Convert.ToDouble(TextBox8.Text) / (Convert.ToDouble(TextBox9.Text) + Convert.ToDouble(TextBox10.Text));
                double kalitedegeri1 = Convert.ToDouble(TextBox9.Text) / (Convert.ToDouble(TextBox9.Text) + Convert.ToDouble(TextBox10.Text));
                double cevrimsuresi2 = Convert.ToDouble(TextBox14.Text) / (Convert.ToDouble(TextBox15.Text) + Convert.ToDouble(TextBox16.Text));
                double kalitedegeri2 = Convert.ToDouble(TextBox15.Text) / (Convert.ToDouble(TextBox15.Text) + Convert.ToDouble(TextBox16.Text));
                double cevrimsuresi3 = Convert.ToDouble(TextBox20.Text) / (Convert.ToDouble(TextBox21.Text) + Convert.ToDouble(TextBox22.Text));
                double kalitedegeri3 = Convert.ToDouble(TextBox21.Text) / (Convert.ToDouble(TextBox21.Text) + Convert.ToDouble(TextBox22.Text));
                double cevrimsuresi4 = Convert.ToDouble(TextBox26.Text) / (Convert.ToDouble(TextBox27.Text) + Convert.ToDouble(TextBox28.Text));
                double kalitedegeri4 = Convert.ToDouble(TextBox27.Text) / (Convert.ToDouble(TextBox27.Text) + Convert.ToDouble(TextBox28.Text));

                Label1.Text = Convert.ToString(cevrimsuresi1);
                Label2.Text = Convert.ToString(kalitedegeri1);
                Label3.Text = Convert.ToString(cevrimsuresi2);
                Label4.Text = Convert.ToString(kalitedegeri2);
                Label5.Text = Convert.ToString(cevrimsuresi3);
                Label6.Text = Convert.ToString(kalitedegeri3);
                Label7.Text = Convert.ToString(cevrimsuresi4);
                Label8.Text = Convert.ToString(kalitedegeri4);

                double netcalisma = Convert.ToDouble(TextBox2.Text) - Convert.ToDouble(TextBox3.Text);
                Label9.Text = Convert.ToString(netcalisma);

                double kullanilabilirlik = (Convert.ToDouble(Label9.Text) - Convert.ToDouble(TextBox4.Text)) / Convert.ToDouble(Label9.Text);
                Label10.Text = Convert.ToString(kullanilabilirlik);

                double ortkalitedeg = (Convert.ToDouble(Label2.Text) + Convert.ToDouble(Label4.Text) + Convert.ToDouble(Label6.Text) + Convert.ToDouble(Label8.Text)) / 4;
                Label11.Text = Convert.ToString(ortkalitedeg);

                double perfdeg = (Convert.ToDouble(TextBox8.Text) + Convert.ToDouble(TextBox14.Text) + Convert.ToDouble(TextBox20.Text) + Convert.ToDouble(TextBox26.Text)) / ((Convert.ToDouble(Label9.Text) - Convert.ToDouble(TextBox4.Text)) * 60);
                Label12.Text = Convert.ToString(perfdeg);

                double oee = Convert.ToDouble(Label10.Text) * Convert.ToDouble(Label11.Text) * Convert.ToDouble(Label12.Text);
                Label13.Text = Convert.ToString(oee);
            }
            catch
            {
                Response.Write("<script>alert('Lutfen bos alan birakmayiniz!');</script>");
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Label1.Text == "")
            {
                Response.Write("<script>alert('Once hesaplamalari yapiniz.');</script>");
            }
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Baglanti;
            cmd.CommandText = "INSERT INTO arkopa (KD, OKD, PD, OEE, Makine, Tarih) VALUES (@kd, @okd, @pd, @oee, @makine, @tarih);";
            cmd.Parameters.AddWithValue("@kd", Label10.Text);
            cmd.Parameters.AddWithValue("@okd", Label11.Text);
            cmd.Parameters.AddWithValue("@pd", Label12.Text);
            cmd.Parameters.AddWithValue("@oee", Label13.Text);
            cmd.Parameters.AddWithValue("@makine", ListBox1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@tarih", TextBox5.Text);
            cmd.ExecuteNonQuery();
        }
    }
}