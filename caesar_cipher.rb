require 'pry-byebug'

array_numbers = []
array_plus_key = []
array_coded = []
coded_message = ""

puts "What message you want to encode?"
message = gets.chop

puts "Give me a number"
number = gets.to_i

keys = "a".upto("z").to_a

encription_key = {}


def encript_message(array)

    original_array = message.split("")

    keys.each do |variable|
        encription_key[variable] = keys.index(variable)
    end

    original_array.each {|letter| array_numbers.push(encription_key.fetch(letter))}

    array_numbers.each {|number| array_plus_key.push(number + 1)}

    array_plus_key.each {|number| array_coded.push(encription_key.key(number))}

    coded_message = array_coded.join("")

    puts coded_message

end
