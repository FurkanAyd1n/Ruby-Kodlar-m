def dikucgen?(a,b,c)
if a**2 + b**2 == c**2 || c**2 + a**2 == b**2 || b**2 + c**2 == a**2
TRUE
else
FALSE
end
end

 print " Kenar Bilgilerini Giriniz"
 Kenarlar = gets.chomp
 a, b , c, = Kenarlar.split
 a, b , c, = a.to_i, b.to_i, c.to_i
 
 puts dikucgen? (a,b,c)
