print "cinsiyetinizi giriniz (k,e)"
cinsiyetiniz = gets.chop.to_i
print "kilonuzu giriniz (kg)"
kilonuz = gets.chomp.to_i
print "boyunuzu giriniz (cm)"
boy = gets.chomp.to_i
if cinsiyetiniz == "e"
idealkilo = (boy-100) - (boy-150) / 4
puts "ideal kilo" + idealkilo.to_s
else cinsiyetiniz == "k"
idealkilo = (boy-100) - (boy-150) / 2
puts "ideal kilo" + idealkilo.to_s
end
if idealkilo == kilo
puts "İdeal bir kilodasın dostum"
end
if idealkilo > kilo
puts "Kilo alman gerekiyor dostum"
end
if idealkilo < kilo
puts "Kilo vermen gerekiyor az ye biraz"
end
