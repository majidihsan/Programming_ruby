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

class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
end

book = BookInStock.new("isbn1", 3.14)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"

#produces the same result as ruby has provided a convenient method called attr_reader.

#WRITABLE ATTRIBUTES

class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  def price=(new_price)
    @price = new_price
  end
end

book = BookInStock.new("isbn1", 3.14)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
book.price = book.price * 0.75
puts "New Price = #{book.price}"

#produces
#ISBN = isbn1
#Price = 3.14
#New Price = 2.355
#Note you can get the same result by making the price as atter_accessor.

#CLASSES WORKING WITH CLASSES

class CvsReader
  def initialize
    @books_in_stock = []
  end

  def read_in_cvs_data(cvs_file_name)
    CVS.foreach(cvs_file_name, header: true) do |row|
      @books_in_stock << BookInStock.new(row["ISBN"], row["Amount"])
    end
  end
end

# thats how you read the each row in the csv file and append it as OBJECTS

# VARIABLES

person1 = "Tim"
person2 = person1

person1[0] = 'J'

puts "person1 is #{person1}"
puts "person2 is #{person2}"
# variable is simply a refrence to a object.

#INHERITANCE MODULES AND MIXINS

class Parent
  def say_hello
    puts "Hello from #{self}"
  end
end
p = Parent.new
puts p.say_hello

class Child < Parent
end
c = Child.new
puts c.say_hello

class Person
  def initialize(name)
    @name = name
  end
end
p = Person.new("Michael")
puts p

# does not produce the name bcz super class of the person is Object and Parent of Obejct is BasicObject
# if we define a method called def to_s then it will find the name

class Person
  def initialize(name)
    @name = name
  end
  def to_s
    "person named #{@name}"
  end
end
p = Person.new("Michael")
puts p
