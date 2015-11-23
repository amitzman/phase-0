# Numbers to Commas Solo Challenge

# I spent [4] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? - Input is an integer
  # -Input is an integer

# What is the output? (i.e. What should the code return?)
  # - Output is a string of the number with commas

# What are the steps needed to solve the problem?
#convert the input to a string
#Then convert the string into an array
#decide how many commas are neccessary.
  # - No commas for under 4 digits
  # - 1 comma for 4, 5, and 6 digits
  # - 2 commas for 7, 8, 9 digits
  # - 3 commas for 10, 11, 12 digits
#Insert a comma every -4 elements of the array.
#Convert the array back to a string


# 1. Initial Solution
# def separate_comma(number)
# num = number.to_s.split('')
# num_commas = num.length.to_f / 3.0

#   if num.length < 4
#     return num.join('')
#   else
#     i =-4
#     (num_commas.ceil.to_i - 1).times do
#       num.insert(i, ',')
#       i += -4
#     end
#   end
#   return num.join('')
# end
# puts separate_comma(1000000)




# 2. Refactored Solution
def separate_comma(number)
num = number.to_s.split('')
num_commas = (num.length.to_f / 3.0).ceil.to_i - 1

    i =-4
    (num_commas).times do
      num.insert(i, ',')
      i += -4
    end
  return num.join('')
end
puts separate_comma(10000000000000000)


# 3. Reflection