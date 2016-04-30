def sorgu(ileti)
print ileti
gets.chomp
end

#text dosyalarýný oku
idler=File.readlines ("login.txt")
ulkeler=File.readlines("ulkeler_baskentler.txt")
#idleri splitle
i=0
while i < idler.size-1
idler[i]=idler[i].split(',')
i+=1
end
#ulkeleri splitle
k=0
while k < ulkeler.size
ulkeler[k]=ulkeler[k].split(',')
k+=1
end

id=sorgu("Kullanici Adini Girin: ")
pass=sorgu("Parolanizi Giriniz: ")
#kullanýcý parola döngüsü
while true
#kullanýcý parola dogrulama


if ( id==idler[0][0] && pass==idler[0][1].chomp ) ||  ( id==idler[1][0] && pass==idler[1][1].chomp ) ||  ( id==idler[2][0] && pass==idler[2][1].chomp ) ||  ( id==idler[3][0] && pass==idler[3][1].chomp ) || ( id==idler[4][0] && pass==idler[4][1].chomp ) 

	puts "Ulke Baskent icin : ulkebaskent"
	puts "Baskent Ulke icin : baskentulke"
	puts "Cikis icin : cikis"
	puts ""
	print "Komut Giriniz :"
	#ulkebaskent komutu
	komut=gets.chomp
	
	if komut == "ulkebaskent"
		s=0
		a=false
		print "Ulke :"
		ulke=gets.chomp
			while true
				if ulke==ulkeler[s][0]
					a=true
					break
				else 
					a=false
				end
			s+=1
			end
					if a==true
						puts "Baskenti : #{ulkeler[s][1]}"
					else
						puts "Bulunamadi"
					end
		#baskentulke komutu
		else if komut== "baskentulke"
			b=false
			e=0
			print "Baskent :"
			baskent=gets
				while true
					if baskent==ulkeler[e][1]
						b=true
						break
					else 
						b=false
					end	
				e+=1
				end

					if b==true
						puts "Ulke: : #{ulkeler[e][0]}"
					else
						puts "Bulunamadi"
					end

	
			#çýkýþ komutu	
			else if komut=="cikis"
				puts "Panelden Ciktiniz"
			else
				puts "Komutunuz Anlasilmadi"
			end
		end
	end	
#parola uyuþmamazlýðý
else
puts "ID ve Parolaniz Uyusmadi"
id=sorgu("Kullanici Adini Girin: ")
pass=sorgu("Parolanizi Giriniz: ")
end
end