# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode

#Define a method that has a string as an argument
#IF the argument is empty then return an empty string
#ELSIF argument is one word then reverse the word
#ELSE reverse each word, but not the order they are in


# Initial Solution
# def reverse_words(sentence)
#   sentence_array = sentence.split
#   if sentence_array.length == 0
#     return sentence
#   elsif sentence_array.length == 1
#     return sentence.reverse
#   else
#     sentence_array.each do |word|
#       word.reverse!
#     end
#       return sentence_array.join(' ')
#   end
# end

# puts reverse_words('don is the man')



# Refactored Solution
def reverse_words(sentence)
  return sentence.split.each {|word| word.reverse!}.join(' ')
end

p reverse_words('')



# Reflection