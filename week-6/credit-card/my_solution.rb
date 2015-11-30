# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: up to 16 numbers
# Output: true or false
# Steps:
# create initialize method that takes in up to 16 numbers and returns error if less than 16 or greater
# create double method that doubles every other number starting from 2nd last
# create sum method that adds each number in the array
  #Split numbers greater than 10 into it's own array ie [1, 0]
  #Flatten the split numbers into the original array

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(number)
#     @number = number.to_s.chars.map(&:to_i)
#     if @number.length != 16
#       raise ArgumentError.new("Not valid credit card number")
#     end
#   end

#   def double_and_add
#     @number.reverse.map!.with_index{|v,i| i % 2 == 0 ? v : v * 2     }.reverse.join.to_s.chars.map(&:to_i).reduce(:+)
#   end

#   def check_card
#     if double_and_add % 10 == 0
#       p true
#     else
#       p false
#     end
#   end
# end

# new = CreditCard.new(4563960122001999)
# p new
# p new.double_and_add
# p new.check_card

# Refactored Solution
class CreditCard

  def initialize(number)
    @number = number.to_s.chars.map(&:to_i)
    raise ArgumentError.new("Not valid credit card number") if @number.length != 16
  end

  def check_card
   @sum = @number.reverse.map!.with_index{|v,i| i % 2 == 0 ? v : v * 2     }.reverse.join.to_s.chars.map(&:to_i).reduce(:+)

    if @sum % 10 == 0
      p true
    else
      p false
    end
  end

new = CreditCard.new(4563960122001999)
p new
p new.check_card





# Reflection
# What was the most difficult part of this challenge for you and your pair?

  # Most difficult part for us was being able to figure out how to modify every other element of an array.

# What new methods did you find to help you when you refactored?

  # Not neccesarily new, but the reduce method us greatly when it came to finding the sum of an array.

# What concepts or learnings were you able to solidify in this challenge?

  # Manipulating the data of an array was solidified.  Just the use of the map method on an array to modify elements.