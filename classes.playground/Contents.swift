/*
 Sınıf yapıları ve nesnel programlama örnekleri
 */


//Sınıf Tanımlanıyor
class sinif {
    //Özellikler
    var birOzellik:String!
    var baskaBirOzellik:Int!
    
    //Fonksiyonlar ~ Metotlar
    func sinif(){
        
    }
    
    func birFonksiyon(){
        
    }
    
    func baskaBirFonksiyon(){
        
    }
}

//Bir sınıfın türetilerek nesne oluşturulması
let nesne = sinif()
nesne.birOzellik = "Ozellik deger alıyor"
nesne.birFonksiyon() //Nesnenin fonksiyonu çalıştırılıyor

//Yapıcı ve Yıkıcı Metotların Kullanımı
class ogrenci {
    var ogrenciAdi:String
    init(ogrenciAdi:String) {    // Yapıcı Metot
        self.ogrenciAdi = ogrenciAdi
        print("Yapıcı metot ile dışarıdan alınan öğrenci adı : \(self.ogrenciAdi)")
    }
    
    deinit {    // Yıkıcı Metot
        print("Sınıf ortadan kaldırılıyor!")
    }
}

var student:ogrenci? = ogrenci(ogrenciAdi: "Anıl Kayahan") //Yapıcı Metot sınıfın türetilmesi ile çalışır.
student = nil //Yıkıcı Metot sınıfın yok edilmesi ile çalışır.


// Sınıflarda Kalıtım Kullanımı

class insan{
    let ayakSayisi:Int = 2
    let kolSayisi:Int = 2
    
    func yuru(){
        print("Yürüyor")
    }
    
    func kos(){
        print("Koşuyor")
    }
}

class superKahraman : insan {   //İnsan sınıfından kalıtım alınıyor.
    func uc(){
        print("Uçuyor")
    }
}

let superman = superKahraman()
superman.yuru()
superman.kos()
superman.uc()


// Sınıflarda Polymorphism - Çok Biçimlilik Örneği
class Araba {
    let tekerSayisi = 4
    let kapiSayisi = 4
    
    func motorCalis(){
        print("Yakıt Gerekiyor")
    }
    
    func direksiyonDon(){
        print("Direksiyon Dönüyor")
    }
}

class elektrikliAraba : Araba{
    /*
     Kalıtım yolu ile alınan motorCalis() fonksiyonu elektrikliAraba sınıfında override ile geçersiz kılınarak tekrar yazılıyor.
     */
    override func motorCalis() {
        print("Pil Şarj Edilmeli!")
    }
}




