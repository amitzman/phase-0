# Analyze the Errors

# I worked on this challenge by myself.
# I spent  1.5 hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#   errors.rb
# 2. What is the line number where the error occurs?
#   line 170
# 3. What is the type of error message?
#   Syntax error
# 4. What additional information does the interpreter provide about this type of error?
#   Did not expect the end of input, but rather expecting keyword_end
# 5. Where is the error in the code?
#   Very end of the file.
# 6. Why did the interpreter give you this error?
#   We did not put an end for the method cartman_hates.  Added end on line 17 to fix

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
#   Line 36
# 2. What is the type of error message?
#   in `<main>'
# 3. What additional information does the interpreter provide about this type of error?
#    undefined local variable or method 'south_park'
# 4. Where is the error in the code?
#   There error is the whole name in itself.  It's not being assigned to a value to become a variable or not being defined as a method.
# 5. Why did the interpreter give you this error?
#   We're calling on a variable or method that isn't defined.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
#    Line 51
# 2. What is the type of error message?
#    undefined method 'cartman'
# 3. What additional information does the interpreter provide about this type of error?
#    It's a NoMethodError for the object
# 4. Where is the error in the code?
#    The error is the name itself.  It has not yet been defined as a method
# 5. Why did the interpreter give you this error?
#    The cartman method has not been defined when it's been called

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#   Line 66
# 2. What is the type of error message?
#   wrong number of arguements (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
#   (Argument Error) coming from line 70
# 4. Where is the error in the code?
#    After cartmans_phrase on line 66
# 5. Why did the interpreter give you this error?
#    When cartmans_phrase was defined, there was no arguement given.  Neeed to add ( ) to it on line 66.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
#   line 85
# 2. What is the type of error message?
#   wrong number of arguments (0 for 1)
# 3. What additional information does the interpreter provide about this type of error?
#    ArgumentError, comes from when it's called upon on line 89
# 4. Where is the error in the code?
#    The arguement from cartman_says on line 85
# 5. Why did the interpreter give you this error?
#    The method is supposed to have an arguement passed through, but when called on line 89, there was no arguement given.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#   Line 106
# 2. What is the type of error message?
#   wrong number of arguements (1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
#   ArguementError, happens when called upon on line 110
# 4. Where is the error in the code?
#   In the argument for cartmans_lie
# 5. Why did the interpreter give you this error?
#    There are supposed to be two arguments passed through for this method, but when called upon, only one out of two arugements were passed through.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#   line 125
# 2. What is the type of error message?
#   String can't be coerced into Fixnum (TypeError)
# 3. What additional information does the interpreter provide about this type of error?
#   (Type Error)
# 4. Where is the error in the code?
#   The whole line is an error
# 5. Why did the interpreter give you this error?
#    We can't multiply an integer by a string.  It would have to be the other way around.  Then we would be able to print the string five times.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#   Line 140
# 2. What is the type of error message?
#   divided by 0
# 3. What additional information does the interpreter provide about this type of error?
#    (ZeroDivisionError)
# 4. Where is the error in the code?
#   What the variable is assigned to.  The formula itself
# 5. Why did the interpreter give you this error?
#   Nothing can be divided by zero, the answer is infinity.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#   Line 156
# 2. What is the type of error message?
#   cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
#   Path of where the file should be
# 4. Where is the error in the code?
#    The file being called up on
# 5. Why did the interpreter give you this error?
#    The file that is being called upon does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?

#I thought the integer trying to be multiplied by a string was most difficult to read.  The language wasn't as clear as the other error messages.  'String can't be coerced into Fixnum'

#How did you figure out what the issue with the error was?

#I knew right away looking at the code itself what the error was.  I knew that an integer can't be multiplied by a string and that the solution would be to swap the integer with the string.  So the string can multiplied so the output is to print the string 5 times.

#Were you able to determine why each error message happened based on the code?

#Yep, I was able to see the error message occured based on the code because of practice with ruby in the previous challenges and prep work for the interview.

#When you encounter errors in your future code, what process will you follow to help you debug?

#Go to the line number that the error occurs.  Come up with some theories as to why the error occured.  Then test one theory at a time until it is fixed.