def sorgu(ileti)
print ileti
gets.chomp
end

#text dosyalar�n� oku
idler=File.readlines ("login.txt")
ulkeler=File.readlines("ulkeler_baskentler.txt")
#idleri splitle
a=0
while a < idler.size-1
idler[a]=idler[a].split(',')
a+=1
end
#ulkeleri splitle
b=0
while b < ulkeler.size
ulkeler[b]=ulkeler[b].split(',')
b+=1
end

id=sorgu("Kullanici Adini Girin: ")
pass=sorgu("Parolanizi Giriniz: ")
#kullan�c� parola d�ng�s�
while true
#kullan�c� parola dogrulama


if ( id==idler[0][0] && pass==idler[0][1].chomp ) ||  ( id==idler[1][0] && pass==idler[1][1].chomp ) ||  ( id==idler[2][0] && pass==idler[2][1].chomp ) ||  ( id==idler[3][0] && pass==idler[3][1].chomp ) || ( id==idler[4][0] && pass==idler[4][1].chomp )

	puts "Ulke Baskent icin : ulkebaskent"
	puts "Baskent Ulke icin : baskentulke"
	puts "Cikis icin : cikis"
	puts ""
	print "Komut Giriniz :"
	#ulkebaskent komutu
	komut=gets.chomp

	if komut == "ulkebaskent"
		k=0
		i=false
		print "Ulke :"
		ulke=gets.chomp
			while true
				if ulke==ulkeler[k][0]
					i=true
					break
				else
					i=false
				end
			k+=1
			end
					if i==true
						puts "Baskenti : #{ulkeler[k][1]}"
					else
						puts "Bulunamadi"
					end
		#baskentulke komutu
		else if komut== "baskentulke"
			m=false
			n=0
			print "Baskent :"
			baskent=gets
				while true
					if baskent==ulkeler[n][1]
						m=true
						break
					else
						m=false
					end
				n+=1
				end

					if m==true
						puts "Ulke: : #{ulkeler[n][0]}"
					else
						puts "Bulunamadi"
					end


			#��k�� komutu
			else if komut=="cikis"
				puts "Gule Gule"
			else
				puts "Komutunuz Anlasilmadi"
			end
		end
	end
#parola uyu�mamazl���
else
puts "ID ve Parolaniz Uyusmadi"
id=sorgu("Kullanici Adini Girin: ")
pass=sorgu("Parolanizi Giriniz: ")
end
end
