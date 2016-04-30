(1..9).each do |x|
   satir = ""
   (1..9).each{ |y| satir += "#{x * y}\t" }
   puts satir
end
