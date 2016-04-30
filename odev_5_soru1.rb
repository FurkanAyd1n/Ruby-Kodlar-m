#encoding: utf-8
def kelime(x)
dizi=x.split
i=0
while i<dizi.size
b= dizi[i].split(//)
print b
print b.count("a,i")*3
puts ""
i=i+1
end
end

kelime "merhaba dostum nasilsin"
