def  loginoku()
   logintext = file.readlines("login.txt")        #open(File.expand_path('../login.txt',__FILE__))
   dizi =[]
   i = 0
   while  i < logintext.size
     dizi[i] = logintext[i].split ","
     i += 1
   end
   dizi
end
def  ulkebaskentoku()
  ulkeler_baskent = file.readlines("ulkeler_baskentler")            #open(File.expand_path('../ulkeler_baskentler.txt',__FILE__))
  dizi =[]
  i = 0
  while  i < ulkeler_baskent.size
    dizi[i] = ulkeler_baskent[i].split ","
    i += 1
  end
  dizi
end
def ulkebul baskent
  dizi = ulkebaskentoku
  i = 0
  ulke = ""
  while i < dizi.size
    if dizi[i][1].chomp == baskent
      ulke = dizi[i][0]
    end
    i +=1
  end
  ulke
end

def baskentbul ulke
  dizi = ulkebaskentoku
  i =0
  baskent = ""
 while i < dizi.length
   if dizi[i][0].chomp == ulke
    baskent = dizi[i][1]
   end
   i +=1
  end
  baskent
end
def denetle? (kadi,sifre)
  dizi = loginoku
  i = 0
  while i < dizi.length
    if dizi[i][0] == kadi && dizi[i][1].chomp == sifre
      return true
    end
    i += 1
  end
end

puts "Sisteme hoş geldiniz"
while true
  print "komut giriniz"
  komut = gets.chomp
  if komut != "login" && komut != "ub" && komut != "bu" && komut != "cikis"  #ulke baskent
  puts "hatali bir komut girdiniz"
  end

 if komut == "login"
  print "kullanici adi giriniz"
  kadi = gets.chomp
  print "sifre giriniz"
  sifre = gets.chomp
 end
  if denetle? (kadi,sifre)
    puts "giris basarili"
  end
 if komut == "bu" && denetle? (kadi,sifre)
  print "ulke giriniz"
  ulke = gets.chomp
  puts baskentbul ulke
 end
 if komut == "ub" && denetle? (kadi,sifre)
   print "baskent giriniz"
   baskent = gets.chomp
   puts ulkebul baskent
 end
 if komut == "cikis"
   print "gule gule"
   break
 end
end
