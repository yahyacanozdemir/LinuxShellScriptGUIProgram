# Linux Basic Database Program
    Linux shell script ve whiptail kütüphanesi ile yazılan, basit veritabanı işlemleri yapan program.
    
![girisEkranlariEntery](https://user-images.githubusercontent.com/43846778/104724699-16fbf080-5742-11eb-97b2-911bc1aefeae.png)

## Program Özellikleri 
<ol>
        <li><a href="#Veri-Ekleme">Veri Ekleme </a></li>
        <li><a href="#Veri-Silme">Veri Silme</a></li>
        <li><a href="#Veri-Arama">Veri Arama</a></li>
        <li><a href="#Veri-isteleme">Tüm Verileri Listeleme</a></li>
        <li><a href="#Program-Sonlandırma">Program Sonlandırma</a></li>
</ol>

  <details open="open">
  <summary><h2 style="display: inline-block">Geliştirme Süreci</h2></summary>
  <ol>
    <li>
      Geliştirme Ortamı
      <ul>
        <li>Linux Shell Script</li>
      </ul>
    </li>
    <li>
     Kullanılan Araçlar
      <ul>
        <li>Nano Text Editor</li>
        <li>Whiptail Library</li>
        <li>Grep Command</li>
        <li>Cat Command</li>
        <li>Shell Functions</li>
      </ul>
    </li>
    <li>
     Süreç
      <ul>
        <li>Başlangıç Tarihi : 14.01.2021</li>
        <li>Bitiş Tarihi : 14.01.2021</li>
        <li>Geliştirilmeye Harcanan Toplam Süre : 2.5 Saat </li>
      </ul>
    </li>
    <li>
     Geliştirici Bilgileri
      <ul>
        <li>Yahya Can Özdemir</li>
        <li>Bursa Teknik Üniversitesi</li>
      </ul>
    </li>  
    
      
  </ol>
</details>

## Program Kullanımı & Test
   Programı kullanmak & test etmek için Linux bir sanal makine ya da sunucuya ihtiyaç vardır. 

   ### Test
   Program.sh dosyası doğrudan linux makineye kopyalandıktan sonra, programın bulunduğu dizinde `bash program.sh` komutu çalıştırılmadır.
   
   VEYA
   
   Bu başlıktaki Program.sh içeriği kopyalandıktan sonra bir linux makinenin konsol ekranında herhangi bir dizinde, sırasıyla 
  `cat > program.sh`
  `mouse sağ click`
  `ctrl + d`
  `bash program.sh` işlemleri yapılmalıdır.
   
   

## Program Görselleri
### Veri Ekleme
  
    İstenilen veri yazıldıktan sonra OK butonu ile veri girişi yapılmakta, Cancel butonu ile ana menüye
    dönülmektedir. 
    
    Veri tabanına veri ekleme aşamasını test etmek amacıyla Veri1, Veri2... gibi girişler default olarak 
    gelmektedir. 
   
   
![veriEkle](https://user-images.githubusercontent.com/43846778/104725815-a655d380-5743-11eb-9974-4b658715a709.png)

### Veri Silme
    İstenilen veri yazıldıktan sonra OK butonu ile veri silme işlemi yapılmakta, Cancel butonu ile 
    ana menüye dönülmektedir.
    
    Tüm verileri, veri tabanını silmek için veri girişi bölümüne "tum" ifadesi yazılıp OK butonuna 
    basılabilir.
    
    Silinmek istenen veri, veri tabanında yok ise kullanıcı, uyarı mesajına ; veritabanında hiç veri yok
    ise kullanıcı veri ekleme ekranına yönlendirilmektedir. 
    
    Veri tabanından veri silme işlemi için Veri yazısı veri silme ekranında default olarak gelmektedir.
    
    Veri silme sonuçlarını kolaylıkla kontrol edebilmek amacıyla kullanıcı veri silme işleminden sonra
    veri listeleme işlemine yönlendirilmektedir
    
![verisil2](https://user-images.githubusercontent.com/43846778/104725819-a7870080-5743-11eb-969f-23ad032b6597.png)

### Veri Arama
    İstenilen veri yazıldıktan sonra OK butonu ile veri arama işlemi yapılmakta, Cancel butonu ile ana 
    menüye dönülmektedir.
    
    Aranmak istenen veri, veri tabanında yok ise kullanıcı, uyarı mesajına ; veritabanında hiç veri yok ise
    kullanıcı veri ekleme ekranına yönlendirilmektedir. 

    Arama sonuçlarını görebileceğiniz ekran da up-down yön tuşlarıyla gezinme yapılabilmektedir.   
![veriAra](https://user-images.githubusercontent.com/43846778/104725824-ac4bb480-5743-11eb-97f8-903b43fec248.png)

### Veri Listeleme
    Ana menüde veri listeleme butonuna tıklanıldığında veri tabanında bulunan tüm veriler scroll-text 
    yapısı ile kullanıcıya gösterilmektedir.
    
    Veri gösterimi bittikten sonra kullanıcı OK butonu ile otamatik olarak ana menüye yönlendirilmektedir.
![veriListele](https://user-images.githubusercontent.com/43846778/104725828-ae157800-5743-11eb-99d3-27b756616ac5.png)


### Program Sonlandırma
    Programdan çıkış yapılma butonu tıklandığında "Emin misiniz" sorusu yöneltilmekte ve program bittiğinde 
    konsolda bilgilendirme mesajı gözükmektedir.
![lastScreen](https://user-images.githubusercontent.com/43846778/104725829-b1106880-5743-11eb-8cdb-4c0593f1e614.png)



