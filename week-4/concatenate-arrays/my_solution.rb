# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  array_3 = []

  array_1.each do |x|
    array_3.push(x)
  end
  array_2.each do |y|
    array_3.push(y)
  end
  return array_3
end

p array_concat([2,3],[4,6])