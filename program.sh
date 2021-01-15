#!/bin/sh


function login () {
isim="Turgay"

isim=$(whiptail --fb --inputbox --nocancel --title "Giriş Yap" "Başlamadan önce, isminiz nedir ?" 15 50 Turgay 3>&1 1>&2 2>&3)

}


function veriGirisi () {

for hint in {1..1000}
do
veri=$(whiptail --fb --inputbox --title "Veri Ekle" "Veri tabanına eklenecek veriyi giriniz. Veri girişine devam etmek için OK ana menüye dönmek için Cancel tıklayınız. " 15 50 Veri$hint 3>&1 1>&2 2>&3)
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo $veri >> veritabani.txt
else
    break
fi
done

anaMenu

}


function veriArama () {
aranan=$(whiptail --fb --inputbox --title "Veri Arama" "Veri tabanında aranacak veriyi giriniz. Veriyi aramak için OK ana menüye dönmek için Cancel tıklayınız. " 15 50 Veri 3>&1 1>&2 2>&3)
exitstatus=$?

File="veritabani.txt"

if [ $exitstatus = 0 ]; then
        if [ -s $File ]; then
        sonuc=""
        sonuc=`cat $File  | grep "$aranan"`
        tekrar=`cat $File  | grep -c "$aranan"`
        satirNumarasi=`cat $File  | grep -n "$aranan"`
        if [ "$sonuc" != "" ]; then
                        if (whiptail --fb --msgbox --title "Arama Sonucu" "Aranan deger veritabanında $tekrar adet mevcut.\n\nSonuçlar bulundugu satır numarası:satır içeriği şeklinde aşağıda gösterilmektedir.\n(Yukarı aşağı ok tuşlarıyla sonuç içerisinde gezinebilirsiniz) ->\n\n$s>
                        veriArama
                        fi
        else
        if (whiptail --fb --msgbox --title "Arama Sonucu" "Aranan deger veritabanında bulunmuyor." 15 50) then
        veriArama
        fi
        fi

        else
                if (whiptail --fb --msgbox --title "Hoop Dikkat" "Henüz hiç veri girişi yapılmamış ! Önce veri girişi yapınız... " 15 50) then
                veriGirisi
                fi
        fi
else
    anaMenu
fi


}

function verileriListele () {
File="veritabani.txt"


if [ -s $File ]; then
(whiptail --fb --textbox --title "Listeleme Sonucu" $File --scrolltext 15 50)
exitstatus=$?
 if [ $exitstatus = 0 ];then
        anaMenu
        fi
else
(whiptail --fb --msgbox --title "Hoop Dikkat" "Henüz hiç veri girişi yapılmamış ! Önce veri girişi yapınız..." 15 50)
veriGirisi
fi

}

function veriSil () {
silinecek=$(whiptail --fb --inputbox --title "Veri Silme" "Veri tabanından silmek istediğiniz veriyi giriniz.(Tüm veritabanını silmek için tum giriniz)\n\nVeriyi silmek için OK ana menüye dönmek için Cancel tıklayınız. " 15 50 Veri 3>&1 1>&2 2>&3)
exitstatus=$?

File="veritabani.txt"

if [ $exitstatus = 0 ]; then
        if [ -s $File ]; then
        sonuc=""
        sonuc=`cat $File | grep -w $silinecek`
        if [ "$silinecek" == "tum" ];then
                `echo rm $File`
                if (whiptail --fb --msgbox --title "Silme Sonucu" "Tüm veritabanı başarıyla silinmiştir ana menüye yönlendirileceksiniz..." 15 50) then
                anaMenu
                fi
        elif [ "$sonuc" != "" ]; then
                        `grep -v -w $silinecek  $File > tmpfile && mv tmpfile $File`
                        if (whiptail --fb --msgbox --title "Silme Sonucu" "Girilen deger veritabanından basariyla silinmiştir. Kontrol amacıyla listeleme ekranına yönlendirileceksiniz..." 15 50 ) then
                        verileriListele
                        fi
        else
        if (whiptail --fb --msgbox --title "Silme Sonucu" "Girilen deger veritabanında bulunmuyor." 15 50) then
        veriSil
        fi
        fi

        else
                if (whiptail --fb --msgbox --title "Hoop Dikkat" "Henüz hiç veri girişi yapılmamış ! Önce veri girişi yapınız... " 15 50) then
                veriGirisi
                fi
        fi
else
    anaMenu
fi

}

function cikisYap () {

if (whiptail --fb --yesno --title "ÇIKIŞ" "Program sonlandırılacak. Emin misiniz ?" 15 50) then
echo "  "
echo "  "
echo "******************************************"
echo "Program sonlandırıldı." 
echo "Yahya Can Özdemir Sağlıklı Günler Diler..."
echo "******************************************"
echo "  "
echo "  "
else
anaMenu
fi
}

function anaMenu () {

SECIM=$(whiptail --fb --menu --nocancel --title "Anamenü" "Hoşgeldin $isim, ne yapmak istiyorsun?" 15 50 5 \
"1:" "Veri Girişi Yap" \
"2:" "Veri Ara" \
"3:" "Tüm Verileri Listele" \
"4:" "Veri Sil" \
"5:" "Programı Sonlandır" 3>&1 1>&2 2>&3)

case $SECIM in

  "1:")
   veriGirisi
    ;;

   "2:")
   veriArama
    ;;

   "3:")
   verileriListele
    ;;

   "4:")
   veriSil
    ;;

   "5:")
    cikisYap
    ;;

   *)
    echo "Hatali Seçim"
    ;;
esac

}


login
anaMenu
