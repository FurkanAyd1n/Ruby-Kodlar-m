class Customer
 def initialize(id, name, addr)
 @cust_id = id
 @cust_name = name
 @cust_addr = addr
 end
 def display_details
  puts "Müşteri id #@cust_id"
  puts "Müşteri adı #@cust_name"
  puts "Müşteri adresi #@cust_addr"
   end
   end

   # Müşteri oluşturma
   cust1=Customer.new("1", "Muhammet", "Denizli/Turkey")
   cust2=Customer.new("2", "Dilek", "Manisa/Turkey")

   # Müşteri bilgi metodunu çağırma
   cust1.display_details
   cust2.display_details
