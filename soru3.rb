#encoding : UTF-8
require 'io/console'

def sor(ileti)
 print "#{ileti}"
 girdi=gets.chomp
 return girdi
end

def kaydet(veri)
 puts "Secmis oldugunuz #{veri}parolaniz basarili bir sekilde kaydedildi "
end

def turkce_kontrol(parola)
parola=parola.include?("x")
  if  parola
    return false
  else
    return true
  end
end

def karakter_uzunlugu(parola)
  if  ( parola.size < 3 || parola.size > 6  )
    return false
  else
    return  true
  end
end

while true
  while true
    a=sor("Parolayi giriniz:")
    if turkce_kontrol(a) && karakter_uzunlugu(a)
      break
    else
      puts "Parolaniz x karakterini icermemeli ve en az 3 en cok 6 karakter uzunlugunda olmali"
    end
  end
b=sor("Parolayi tekrar giriniz:")
    if
      a==b
      kaydet(a)
    break
    else
      puts "Yanlis bir parola girdiniz islemi tekrar ediniz:"
    end
end
