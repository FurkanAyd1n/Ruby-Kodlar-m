puts "Text please: "
text = gets.chomp

words = text.split(" ")
f = Hash.new(0)
words.each { |word| f[word] += 1 }
f = f.sort_by {|a, b| b }
f.reverse!
f.each { |word, f| puts word + " " + f.to_s }
