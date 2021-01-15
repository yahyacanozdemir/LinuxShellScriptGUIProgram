# Linux Basic Database Program
    Linux bash script ve whiptail kütüphanesi ile yazılan, basit veritabanı işlemleri yapan program.
    
![girisEkranlariEntery](https://user-images.githubusercontent.com/43846778/104724699-16fbf080-5742-11eb-97b2-911bc1aefeae.png)

## Program Özellikleri 
<ol>
        <li><a href="### Veri Ekleme">Veri Girişi </a></li>
        <li><a href="#installation">Veri Arama</a></li>
        <li><a href="#installation">Tüm Verileri Listeleme</a></li>
        <li><a href="#installation">Veri Silme</a></li>
        <li><a href="#installation">Program Sonlandırma</a></li>
</ol>

## Program Kullanımı & Test
   Programı kullanmak & test etmek için Linux bir sanal makine ya da sunucuya ihtiyaç vardır. 

   Test
   <ul>
   <li>Program.sh dosyası doğrudan linux makineye kopyalandıktan sonra, programın bulunduğu dizinde `bash program.sh` komutu çalıştırılmadır.</li>
   <li>Bu başlıktaki Program.sh içeriği kopyalandıktan sonra bir linux makinenin konsol ekranında herhangi bir dizinde, sırasıyla 
  `cat > program.sh`
  `mouse sağ click`
  `ctrl + d`
  `bash program.sh` işlemleri yapılmalıdır.
 
   
   </li>
   </ul>
   
   
   
   
   
   
   
   
## Geliştirme Süreci




## Program Görselleri
### Veri Ekleme
  
    İstenilen veri yazıldıktan sonra OK butonu ile veri girişi yapılmakta, Cancel butonu ile ana menüye dönülmektedir. 
    Veri tabanına veri ekleme aşamasını test etmek amacıyla Veri1, Veri2... gibi girişler default olarak gelmektedir. 
   
    
   
![veriEkle](https://user-images.githubusercontent.com/43846778/104725815-a655d380-5743-11eb-9974-4b658715a709.png)

### Veri Girişi
    İstenilen veri yazıldıktan sonra OK butonu ile veri silme işlemi yapılmakta, Cancel butonu ile 
    ana menüye dönülmektedir.
    
    Tüm verileri, veri tabanını silmek için veri girişi bölümüne "tum" ifadesi yazılıp OK butonuna 
    basılabilir.
    
    Silinmek istenen veri, veri tabanında yok ise kullanıcı, uyarı mesajına ; veritabanında hiç veri yok ise 
    kullanıcı veri ekleme ekranına yönlendirilmektedir. 
    
    Veri tabanından veri silme işlemi için Veri yazısı veri silme ekranındaa default olarak gelmektedir.
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
    Programdan çıkış yapılma butonu tıklandığında "Emin misiniz" sorusu yöneltilmekte ve program bittiğinde konsolda
    bilgilendirme mesajı gözükmektedir.
![lastScreen](https://user-images.githubusercontent.com/43846778/104725829-b1106880-5743-11eb-8cdb-4c0593f1e614.png)



