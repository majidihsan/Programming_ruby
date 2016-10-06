#Modules are a wy of grouping together methods classes and constants
module Greetings
  def hello
    puts "Hello"
  end
  def bonjour
    puts "bonjour"
  end
  def hola
    puts "Hola"
  end
end

class User
  include Greetings
end

majid = User.new
puts majid.hello
#But if you try to call the methods as Class Methods, you will get an error:

class User2
  extend Greetings
end
User2.hello
