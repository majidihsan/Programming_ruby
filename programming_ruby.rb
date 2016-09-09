class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
end

b1 = BookInStock.new("isbn1", 3)
b2 = BookInStock.new("isbn2", 3.14)

p b1
p b2

#Produces
#<BookInStock:0x007ff5e48290b0 @isbn="isbn1", @price=3.0>
#<BookInStock:0x007ff5e4829010 @isbn="isbn2", @price=3.14>

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
end

def to_s
  "ISBN: #{@isbn}, Price: #{@price}"
end

b1 = BookInStock.new("isbn1", 3)
b2 = BookInStock.new("isbn2", 3.14)

puts b1
puts b2

#produces
#ISBN: isbn1, Price: 3.0
#ISBN: isbn2, Price: 3.14
#Because of the to_s Method iffiliated with the instance variable


#OBJECTS AND ATTRIBUTES

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def isbn
    @isbn
  end

  def price
    @price
  end
end

book = BookInStock.new("isbn1", 3.14)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"

#Produces
#ISBN = isbn1
#Price = 3.14 (because we have defined two acessor methods to get the value of two instance varirables)
