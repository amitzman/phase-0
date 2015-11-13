puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts 'Greetings, ' + first_name + ' ' + middle_name + ' ' + last_name + '!'


puts "What is your favorite number?"
fav_num = gets.chomp.to_i
big_num = fav_num + 1
puts "I think " + big_num.to_s + ' is a better and bigger number'


=begin
How do you define a local variable?

You define a local variable like the this: my_name = "Alex".  The first character of the variable must be lowercase.

How do you define a method?

You define a method like this:

def method_name (parameter)
  method
end

What is the difference between a local variable and a method?

Local variables store information like strings and can be called upon within the block and can be changed as well.

Methods are things that do something.  For example .to_f will change it to a float.  So we can a variable, num = 5.  Then we can do num.to_f and will change number to 5.0.

How do you run a ruby program from the command line?

You can run a ruby program from the command line by typing "ruby filename.rb"

How do you run an RSpec file from the command line?

You can run an RSpec file from the command line by typing "rspec rpsec_filename.rb".

What was confusing about this material? What made sense?

Nothing was too confusing, except for trying to remember all of the methods.  I thought the methods did make sense, like .upcase makes all the letters in a string uppercase and vice versa with .downcase.

=end