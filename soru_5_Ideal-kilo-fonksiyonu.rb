def ideal_kilo(boy,kilo,cins)
y =(boy-100) - (boy-150) / 2
x = (boy-100) - (boy-150) / 4
if cins == "k" or cins == "K"
  if y < kilo
    puts "ideal kilonuz #{y}"
    puts "kilo vermelisiniz"
  elsif y > kilo
    puts "ideal kilonuz #{y}"
    puts "kilo almalisiniz"
    else
    puts "ideal kilonuz #{y}"
    puts "ideal kilodasiniz"
  end
elsif cins == "E" or cins == "e"
  if x < kilo
  puts "ideal kilonuz #{x}"
  puts "kilo vermelisiniz"
elsif x < kilo
  puts "ideal kilonuz #{x}"
  puts "kilo almalisiniz"
  else
  puts "ideal kilonuz #{x}"
  puts "ideal kilodasiniz"
  end
 end
end
puts "boyunuzu giriniz(cm)"
a = gets.to_i;
puts "kilonuzu giriniz(kg)"
b = gets.to_i;
puts "cinsiyet giriniz(E/K)"
c = gets.chomp;
ideal_kilo(a,b,c)
