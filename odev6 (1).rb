def sorgu(ileti)                   #bu sınıf hiçbir iş yapmıyor?
print ileti
gets.chomp            #burada kullanıcıdan neden veri alındı? alınan veriye ne oldu?
end

#text dosyalarını oku
idler=File.readlines("login.txt")
ulkeler=File.readlines("ulkeler_baskentler.txt")
#idleri splitle
a=0
while a<idler.size-1
  idler[a]=idler[a].split(',')
  a+=1
end
#ulkeleri splitle
b=0
while b<ulkeler.size
  ulkeler[b]=ulkeler[b].split(',')
b+=1
end

id=sorgu("Kullanici Adini Girin")
pass=sorgu("Parolanizi Giriniz")
#kullanıcı parola döngüsü
while true
#kullanıcı parola dogrulama


if ( id==idler[0][0] && pass==idler[0][1].chomp )|| ( id==idler[1][0] && pass==idler[1][1].chomp) || (id==idler[2][0] && pass==idler[2][1].chomp) || (id==idler[3][0] && pass==idler[3][1].chomp ) ||( id==idler[4][0] && pass==idler[4][1].chomp )
  puts "Ulke Baskent icin :ulkebaskent"
  puts "Baskent Ulke icin :baskentulke"
  puts  "Cikis icin:cikis"
  puts ""
  print "Komut Giriniz"

#ulkebaskent komutu
komut=gets.chomp
if komut=="ulkebaskent"
  k=0
  i=false
  print "Ulke :"
Ulke=gets.chomp          #kullanıcıdan ülkeyi almışsın ama başkent yazdırması için hiçbir şey yapmamışsın.
while true               
  if ulke==ulkeler[k][0]
    i=true
    break
  else
    i=false
  end
  k+=1
end
if a==true
  puts "Baskent :#{ulkeler[k][1]}"
else
  puts "Bulunamadi"
end

#baskentulke komutu
else if komut=="baskentulke"
  m=false
  n=0
  print "Baskent :"
  baskent=gets
  while true
    if baskent==ulkeler[n][1]    
    #burada ülkeyi ekrana yazdırman gerek
      m=true
      break
    else
    b=false
end
n+=1
 if b==true
   puts "Ulke::#{ulkeler[n][0]}"
 else
   puts "Bulunamadi"
 end

 #cıkis komutu
 else  if komut=="cikis"      #burda da gerçek manada panelden çıkış yapılmıyor. tam manasıyla bu programı sonlandırman gerek
   puts "Panelden Ciktiniz"
 else
   puts "Komutunuz Anlaşılamadi"
 end
 end
 end

 #parola uyusmazlıgı
 else
   puts "ID ve Parolaniz Uyusmadi"
   id=sorgu("Kullanici Adini Girin:")
   pass=sorgu("Parolanizi Giriniz:")
 end
 end