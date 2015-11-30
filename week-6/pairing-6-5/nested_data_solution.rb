# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# p number_array.flatten.map! {|i| i+5}
p number_array.map! {|element|
  if element.is_a?(Array)
    element.map! {|inner| inner + 5}
  else
    element + 5
  end
}



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

#Solution1

p startup_names.map {|element|
  if element.is_a?(Array)
    element.map { |inner|
      if inner.is_a?(Array)
        inner.map! {|sub_array| sub_array<<"ly"}
      else
        inner << "ly"
        end
          }
    else
      element << "ly"
    end}


#Method Solution

# def startup(name)
#   startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
#   startup_names.each do |element|
#     if element == name
#       element << "ly"
#     elsif element.is_a?(Array)
#       element.each do |sub_array|
#         if sub_array == name
#           sub_array << "ly"
#       elsif
#         sub_array.is_a?(Array)
#         sub_array.each do |inner|
#           if inner == name
#             inner << "ly"
#           end
#         end
#       end
#     end
#   end
# end
# end

# p startup('scope')

# # Reflection
# What are some general rules you can apply to nested arrays?

  # When accessing them, the element indexes all need to be one after the other.  There aren’t really any shortcuts.

# What are some ways you can iterate over nested arrays?

  # Good ways to iterate is using the each loop.  Then we used the is_a?(array) to tell us if the element is an array and if it was then we would do an each loop on the sub arrays.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

  # is_a?(array) was very useful because it told us whether the element that was being iterated over with was a sub-array and if another iteration was necessary.  Then also the map! was very key to modify the array itself.


