**Links to Exercises**

https://github.com/amitzman/phase-0/blob/master/week-4/basic-math.rb

https://github.com/amitzman/phase-0/blob/master/week-4/defining-variables.rb

https://github.com/amitzman/phase-0/blob/master/week-4/simple-string.rb


**What does puts do?**

puts returns nil and prints the output to the consoloe with a new line.  For example "puts 1+2" in a ruby file will return 3 to the console and adds a new line after 3.

**What is an integer? What is a float?**
An integer is a number without a decimal.  Examples of integers: 5, 100, 1000, -10.

A float is a number with a decimal.  Examples of a float: 1.0, 55.25, -1.4.

**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**

Float division takes in account a decimal and returns an exact amount.  Example 9.0/2.0 will return 4.5.

Whereas integer division will round down.  So 9/2 will return 4.

**Program to return hours in a year**
```
puts 365 * 24
```

**Program to return minutes in a decade**
```
puts 60 * 24 * (365*10 + 2)
```


**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**

Handles it like a calculator.  It can add (+), subtract (-), multiply (*), and divide (/) while also following the order of operations.

**What is the difference between integers and floats?**

Integers are whole numbers without a decimal (100, 5, -2, 0)

Floats are numbers with decimals (1.2, 100.4, 0.0)

**What is the difference between integer and float division?**

Float division can divide floats and give an exact answer. (9.0/2.0 will return 4.5).

Integer division will round down when the answer should be a decimal.  (9/2 will return 4, not 4.5)


**What are strings? Why and when would you use them?**

Strings are a group of letters which can have punctuation, digits, symbols and spaces in them.  Example: "Hello World".  I would use a string when I'm trying to return a message when a method or function is ran.

**What are local variables? Why and when would you use them?**

Local variables are a way to store a string, number or a boolean.  We would use them so we don't have to repeat ourselves.  The variable can be called throughout a program, so we can just call the variable instead of writing the whole string for example.

**How was this challenge? Did you get a good review of some of the basics?**

The challenge was pretty straight forward and simple.  Was a good review since I haven't touched Ruby since interview process for DBC.  It was also good to make some mistakes so I could see how the testing worked.