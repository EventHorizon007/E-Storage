using System;
using System.Data.OleDb;

namespace E_Ticaret
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string Idtutucu;
        OleDbConnection db_baglanti;
        OleDbCommand cmd;
        OleDbDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            //read database and print girdi and image when choose an id
            //veritabanını okur girdi ve resimleri id seçildiğinde getirir.
            try
            {
                db_baglanti = new OleDbConnection("provider=Microsoft.Jet.OLEDB.4.0; DATA Source=" + Server.MapPath("App_Data/urun.mdb"));
                cmd = new OleDbCommand();
                db_baglanti.Open();
                cmd.Connection = db_baglanti;
                cmd.CommandText = ("Select * From UrunBilgisi");
                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    DropDownList1.Items.Add(Convert.ToString(dr["Id"]));
                }
                db_baglanti.Close();
            }

            catch
            {
                Response.Write("Lütfen Girdiğiniz Değerleri Kontrol Ediniz..." +
                    "Sorunun düzelmemesi halinde IT Departmanına bildiriniz.");
                //File.Delete(Server.MapPath("~/Resimler2/" + filename));
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                db_baglanti = new OleDbConnection("provider=Microsoft.Jet.OLEDB.4.0; DATA Source=" + Server.MapPath("App_Data/urun.mdb"));
                OleDbCommand cmd = new OleDbCommand("Select AnaKategori,AltKategori,UrunAdi,UrunBirimFiyati,UrunAdeti,TedarikciAdı,TedarikciTelefon,TedarikciAdres,KaydedenPersonelAd,Acıklama,ResimYolu  from UrunBilgisi where Id=" + Convert.ToInt32(DropDownList1.SelectedItem.Text) + "", db_baglanti);
                db_baglanti.Open();
                //cmd.CommandText = ("Select * From UrunBilgisi");

                cmd.Connection = db_baglanti;
                OleDbDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextArea1.Value = dr["AnaKategori"].ToString();
                    TextArea2.Value = dr["AltKategori"].ToString();
                    TextArea3.Value = dr["UrunAdi"].ToString();
                    TextArea4.Value = dr["UrunBirimFiyati"].ToString();
                    TextArea5.Value = dr["UrunAdeti"].ToString();
                    TextArea6.Value = dr["TedarikciAdı"].ToString();
                    TextArea7.Value = dr["TedarikciTelefon"].ToString();
                    TextArea8.Value = dr["TedarikciAdres"].ToString();
                    TextArea9.Value = dr["KaydedenPersonelAd"].ToString();
                    TextArea10.Value = dr["Acıklama"].ToString();
                    Image1.ImageUrl = "" + dr["ResimYolu"].ToString() + "";
                }
                db_baglanti.Close();
            }

            catch
            {
                Response.Write("Lütfen Girdiğiniz Değerleri Kontrol Ediniz..." +
                "Sorunun düzelmemesi halinde IT Departmanına bildiriniz.");

            }

        }
    }
}