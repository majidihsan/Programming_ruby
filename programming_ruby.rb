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
