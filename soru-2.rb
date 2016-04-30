numbers1 = [2,3,4,5,6,7,8,9]
numbers2 = [1,2,3,4,5,6,7,8,9]
numbers2.each do |k2|
print "
#{k2}"
numbers1.each do |k1|
print "    #{k1*k2}"
end

end
