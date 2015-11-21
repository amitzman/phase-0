# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! do |x|
   if x.is_a?(Integer)
     x + thing_to_modify
   else
    x
   end
  end
end
my_array_modification_method!(i_want_pets, 10)
print i_want_pets

def my_hash_modification_method!(source, thing_to_modify)
  source.each{|k, v| source[k] = v + thing_to_modify }
end

my_hash_modification_method!(my_family_pets_ages, 10)
print my_family_pets_ages

# Identify and describe the Ruby method(s) you implemented.
#For my_array_modification_method! I implemented two methods.  The first one is .map!.  I chose the bang ('!') because the non destructive (map) element creates a new array.  .map! will alter the current array with code a block.  In this instance I did an IF statement in the block.  I checked to see if the element is an integer with .is_a?.  This will return true if the class passed through is true.  So if it is an integer it will add a number to the integer element.
#
#For my_hash_modification_method!  All I used was the .each iterator and modified each value with the number passed through as the arguement.


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#