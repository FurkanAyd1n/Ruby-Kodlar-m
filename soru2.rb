 def mukemmelmi (bolunen)
  bolen=1
  toplam=0
  while bolen < bolunen
    if (bolunen%bolen==0)
      toplam=toplam+bolen
    end
    bolen=bolen+1
  end
   if
     (toplam==bolunen )
     return true
   else
     return false
   end
 end
  if mukemmelmi(6)
    puts "6 mükemmel bir sayıdır"
  else puts "6 mükemmel bir sayı değildir"
  end
