//Simple stock information write read website.
using System;
using System.Data.OleDb;
using System.IO;

namespace E_Ticaret
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)//save button,kayıt butonu
        {
            string filename = Path.GetFileName(FileUpload1.FileName);



            string AnaKategori = Request["AnaKategori"];//maincategory
            if (AnaKategori == "Seçenek"
                || TextBox1.Text == ""
                || TextBox2.Text == ""
                || TextBox3.Text == ""
                || TextBox4.Text == ""
                || TextBox5.Text == ""
                || TextBox6.Text == ""
                || TextBox7.Text == ""
                || TextBox8.Text == ""
                )
            {
                Response.Write("Tüm Zorunlu Kısımları Doldurunuz..");//fill all necessary part.
            }
            else
            {
                try
                {
                    OleDbConnection db_baglanti;//define database connection,veritabanı bağlantısını tanımlar.
                    OleDbCommand cmd;
                    db_baglanti = new OleDbConnection("provider=Microsoft.Jet.OLEDB.4.0; DATA Source=" + Server.MapPath("App_Data/urun.mdb"));
                    cmd = new OleDbCommand();

                    //save user's input to the database,veri tabanına kayıt yapar.
                    cmd.Connection = db_baglanti;
                    cmd.CommandText = "insert into UrunBilgisi (AnaKategori,AltKategori,UrunAdi,UrunBirimFiyati,UrunAdeti,TedarikciAdı,TedarikciTelefon,TedarikciAdres,KaydedenPersonelAd,Acıklama,ResimYolu) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11)";
                    cmd.Parameters.AddWithValue("@p1", Request.Form["anaKategori"]);
                    cmd.Parameters.AddWithValue("@p2", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@p3", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@p4", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@p5", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@p6", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@p7", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@p8", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@p9", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@p10", TextBox9.Text);

                    //save image path to database and synchronize to database and image upload.
                    //veri tabanına resmin yolunu kaydeder ve resim yüklemesi ve veritabanı uyumunu saglar.
                    if (FileUpload1.HasFile)
                    {
                        try
                        {
                            if (FileUpload1.PostedFile.ContentType == "image/jpeg")//image type,resim türü
                            {
                                if (FileUpload1.PostedFile.ContentLength < 512000)//image length limit,resim boyutu sınırı
                                {

                                    if (filename != "")
                                    {
                                        FileUpload1.SaveAs(Server.MapPath("~/Resimler2/") + filename);
                                        cmd.Parameters.AddWithValue("@p11", "~/Resimler2/" + filename);
                                    }

                                }
                                else
                                    Response.Write("Resim yüklenmedi.Resim Boyutu 500 KB'dan düşük olmalı.");
                                cmd.Parameters.AddWithValue("@p11", "");
                            }
                            else
                                Response.Write("Sadece JPEG formatı kabul edilir.");
                            cmd.Parameters.AddWithValue("@p11", "");
                        }
                        catch (Exception ex)//if image cant upload add space to database(not save path)
                        {
                            Response.Write("Resim yüklenemedi." + ex.Message);
                            cmd.Parameters.AddWithValue("@p11", "");
                        }
                    }

                    db_baglanti.Open();
                    cmd.ExecuteNonQuery();
                    if (FileUpload1.PostedFile.ContentLength < 512000 && filename != "")
                    {
                        Response.Write("Resim Yüklendi.");//image upload
                    }
                    Response.Write("Bağlantı gerçekleştirildi.Kayıt Eklendi.");//Connection has been made. Registration Added.
                    db_baglanti.Close();




                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                }
                catch
                {
                    //Please check your input.
                    Response.Write("Lütfen Girdiğiniz Değerleri Kontrol Ediniz..." +
                        "Sorunun düzelmemesi halinde IT Departmanına bildiriniz.");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    //if there was a error in database inputs(example:necessary part didnt fill)delete image.
                    //eğer database e girdisinde bir hata varsa(örneğin:gerekli yerler doldurulmadı)resim silinir.
                    if (filename != "")
                        File.Delete(Server.MapPath("~/Resimler2/" + filename));
                }
            }
        }
    }
}