#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

#NameData
  # Input:
  # Output:
  # Steps: Set instance variable to my name

#Greeting
  #Initialize
  #Create method that returns a greeting with my name in it.



class NameData
  attr_accessor :name
  def set_name
    @name = "Alex"
  end
end


class Greetings
  def initialize
    @name = NameData.new
  end

  def hello
    puts "Hello, #{@name.set_name}.  You are awesome!"
  end
end

greet = Greetings.new
greet.hello


# Reflection

# Release 1

# What are these methods doing?
  # In the first release these methods are initializing a profile for Kim who is 27 years old and a Cartographer.  Then there are other methods that print out the name, age, and occupation.  Then the other methods allow you to change the name, age, and occupation.

# How are they modifying or returning the value of instance variables?
  # They are modifying the instance variables by setting them to new values in the change methods.  They are the returning the value in the print_info method.

# Release 2


# What changed between the last release and this release?
  # There was an attr_reader for :age which let us no longer need the what_is_age method.

# What was replaced?
  # The what_is_age method was replaced with just .age since the attr_reader was set to :age.  Now all that is needed is Profile.age

# Is this code simpler than the last?
  # Yeah, this one is a little more simple.  One less method to define.

# Release 3

# What changed between the last release and this release?
  # There was an attr_writer set for :age.

# What was replaced?
  # The change_my_age method was replaced with just .age.  Making :age set to a attr_writer it allows the variable to be changed.

# Is this code simpler than the last?
  # Yes, it’s more simple because it eliminates another method.

# What is a reader method?

  # A reader method just means it returns a value or state outside of a class, but it cannot be changed.

# What is a writer method?

  # This means the value of a variable can be changed outside of the class but it is not readable.

# What do the attr methods do for you?

  # They allow us to simplify code when creating a class.  Instead of creating several methods which allow us to change variables and return the status of a variable we can now use attr methods to do this for us.


# Should you always use an accessor to cover your bases? Why or why not?

  # No, you should not always use an accessor.  Some variables are just meant to be read and not written or vice versa.  It could lead to debugging problems down the road and they present a security risk of your data.

# What is confusing to you about these methods?

  # I understand them, just using them are a bit confusing.  Just need to practice more using them.