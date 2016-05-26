# movies = ["Ghost Busters", "Toy Story", "Ironman", "Who framed rodger rabbit", "Casablanca", "Finding Nemo", "Deadpool", "Star Wars", "Harry Potter", "The Big Sleep"]
#
# movies.each do |m|
#   puts m.upcase
# end
#




# 20.times do |x|
#   print (x+1).to_s + ", "
# end


# puts "Pick a Number"
# number = gets.to_i
# if number < 10 && number > 1
#   puts "#{number} is Valid"
# else puts "#{number} is Invalid"
# end



# 100.times do |x|
#   number = x+1
#   if number%3==0 && number%5 != 0
#     puts "Fizz"
#   end
#   if number%5==0 && number%3 !=0
#     puts "Buzz"
#   end
#   if number%15==0
#     puts "FizzBuzz"
#   elsif number%15!=0 && number%3!=0 && number%5!=0
#     puts number
#   end
# end



# def  sum_these_numbers(a,b)
#   sum = (a+b)
#   def times_two()
#     print sum*2
#   end
# end
#
# sum_these_numbers(50,6)
# times_two()


#
# def times_two()
#   sum_these_numbers
#   print sum * 2
# end

# def is_even(a)
#   puts a.even?
# end
#
# is_even(4)


def sumNum(a,b)
  sum = a+b
  puts sum
end

sumNum(2,3)

def methodTwo(a,b)
  puts sumNum(a,b)+ "this works"
end
methodTwo(4,5)
