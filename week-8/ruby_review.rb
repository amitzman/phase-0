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
# What concepts did you review or learn in this challenge?

  #In this challenge, just worked on breaking it down for an MVP solution for the intial solution.  Then when refactoring reviewed on praciting researching methods.  I knew the .split turned a string into an array, but learned more about when a parenthesis was needed.  Also reviewed more on a destructiveness on a method.  In this instance it was the reverse method so it changed the original instead of creating a copy.

# What is still confusing to you about Ruby?

  #Nothing is too confusing about it.  Feel pretty comfortable with it.  Probably can use more practice on iterating through nested hashes and arrays.

# What are you going to study to get more prepared for Phase 1?
  #Going to study more refactoring methods as well as iterating.  Also, practice on building classes.