print "uc adet kenar uzunluğu giriniz"
kenarlar = gets.chomp
a,b,c = kenarlar.split
a,b,c = a.to_i , b.to_i , c.to_i
if a**2 + b**2 == c**2 || b**2 + c**2 == a**2 || a**2 + c**2 == b**2
puts "Doğru bu bir dikucgendir"
else
puts "Hayır bu bir dikucgen değil"
end
