# #The Little Coder That Could - Print out "I think I can" 5x!

# 5.times do
# 	puts "I think I can!"
# end	


# # Times Square:
# # Initiate a variable called 'count' at 0.
# # For ten times, display the square of 'count',
# # and then increment each time by 1.

# count = 0

# 10.times do
# 	puts count * count 
# 	count +=1


# end	

# # Ask the user for a number (1-10), print the doubles of their number through 10.


# puts "Give me number a between 1 and 10"
# num = gets.chomp.to_i
# puts "-----------------------"

# until num == 11
# 	puts num * 2
# 	num +=1
	
# end



# # Now reverse it! Ask for again for a number between 1 and 10, then count down to 0.


# puts "Give me a number between 1 and 10"
# num = gets.chomp.to_i
# puts "-----------------------"

# until num == 0
# 	puts num * 2
# 	num -=1
	
# end

# # Until Dad says yes, keep asking him if we can go to Itchy and Scratchy Land (or Mt. Splashmore).

# dad = "no"

# until dad == "yes"
# 	puts "Dad, can we go to Itchy and Scratchy Land?"
# 	dad = gets.chomp.downcase
# end

# puts "Thanks Dad!  You're the best!"

# # Pretend the computer is being passed around during class introductions.
# # The student at the very back is named Jacob, so have your program take names until his name is entered.

# puts "Please enter your name and pass the computer to the next student:"

# name = gets.chomp.upcase

# while name != "JACOB"
# 	name = gets.chomp.upcase	
# end
	
# puts "Thank you #{name}! Please bring the computer to the front"	

# # Write a loop that continues to display random numbers between 1 and 10 until the number generated is 7.

# number = rand(1..10)

# while number != 7
# 	puts number
# 	number = rand(1..10)
# end	

#array loop practice - Animal Array

# animals = ["cats", "dogs", "bunnies", "hamsters"]

# # Use .each to iterate through and print out the contents of your array.
# animals.each do |a|
# 	puts "I really love #{a}"
# end	

# animals.each_with_index do |animal,index|
# 	puts "The #{animal} are in index number #{index}."
# end	

# Set an animal as your "favorite",
# if your favorite animal is in the array, print to the screen: "I love [that animal]!"; if it's not in there, print to screen: "No, I don't care for those."


# animals = ["cats", "dogs", "bunnies", "hamsters"]

# print "What's your favorite animal: "

# favorite = gets.chomp.downcase

# animals.each do |animal|
# 	if animal == favorite
# 		puts "The #{animal} are my favorite"
# 	else
# 		puts "No, I don't care for those #{animal}."	
# 	end
# end	


# print "What's your favorite animal: "

# favorite = gets.chomp.downcase

# found = false
# animals.each do |animal|
# 	if animal == favorite
# 		puts "The #{animal} are my favorite."
# 		found = true	
# 	end
# end	

# if found == false
# 	puts "I don't like any of those animals!"
# end	


# # What would be a way of doing this without the .each iterator?  Use the ".include?" method
# print "What's your favorite animal: "

# favorite = gets.chomp.downcase

# if animals.include? favorite
# 	puts "#{favorite} are my favorite animals!"
# else
# 	puts "I don't care for those animals!"	
# end

# Create a Hash with keys "Name", "Age", "Hometown" and "Favorite Food".
# Ask the user for the values!
# Iterate through the Hash and introduce this person:
# "This is _____,
# They are ___-years-old,
# from ________,
# and their favorite food is _________."


# my_hash = {}
# #or my_hash = Hash.new

# print "Please enter a name:"
# name = gets.chomp.capitalize
# print "Please enter an age:"
# age = gets.chomp.to_i
# print "Please enter a hometown:"
# hometown = gets.chomp.capitalize
# print "Please enter favorite food:"
# fav_food = gets.chomp.downcase

# my_hash["Name"]= name
# my_hash["Age"] = age
# my_hash["Hometown"] = hometown
# my_hash["Favorite Food"] = fav_food 


# my_hash.each do |key, value|

# 	case key
# 		when "Name"
# 			puts "This is #{value}."
# 		when "Age"
# 			puts "they are #{value}-years-old,"	
# 		when "Hometown"
# 			puts "they are from #{value},"	
# 		when "Favorite Food"
# 			puts 	"and their favorite food is #{value}"

# 	end	
# end


# #without iteration
# puts "Without interation"
# puts "---------------------"
# puts "This is #{my_hash["Name"]},"
# puts "they are #{my_hash["Age"]}-years-old,"
# puts "they are from #{my_hash["Hometown"]}, "
# puts "and, their favorite food is #{my_hash["Favorite Food"]}."

# Ask the user for 5 numbers,
# store them in an array,
# then find the sum, product, largest, and smallest of those numbers.

# num_array = []

# 5.times do 
# 	puts "Give me a number: "
# 	num = gets.chomp.to_i
# 	num_array.push(num)
# end

# sum = 0
# prod = 1

# num_array.each do |num|

# 	sum += num	
# 	prod *= num
# end	


# puts "The sum of the number in our array is #{sum}, the product is #{prod}, the largest number is #{num_array.max}, and the smalles number is #{num_array.min}"



# # You are a car dealer - create a hash of vehicles:
# # The model is the Key, the make is the Value.
# # Ask the customer what car (model) they are looking for ,
# # use the Hash to determine if you have that vehicle, and what make it is.
# # (e.g., "Oh, you're looking for a Civic? Our Honda selection is right over here...")



# car_hash = {"Civic" => "Honda", "Accord" => "Honda", "Escape" => "Ford", "Camry" => "Toyota"}


# puts "Hello fine Customer!  What car are you looking for today?"
# car = gets.chomp.capitalize


# found = false

# car_hash.each do |model, make|

# 	if model == car
# 		found = true
# 		puts "You are looking for a #{model}? Our #{make} selection is over this way."

# 	elsif make == car	
# 		found = true
# 		puts "Our #{make} selection is over this way."
# 		break
# 	end	

# end	

# if found == false
# 	puts "Sorry, we don't carry the #{car} at this location."
# end	