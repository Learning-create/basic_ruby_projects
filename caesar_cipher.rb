def encript(string, key)

    ascii_array = string.split("").map {|letter| letter.ord}

    number_array = ascii_array.map do |number|

        if number.between?(65,90)

            if number + key > 90

                number -= 26

            elsif number + key < 65

                number += 26

            end

            number + key

        elsif number.between?(97,122)

            if number + key > 122

                number -= 26

            elsif number + key < 97

                number += 26

            end

            number + key

        else 

            number
        end

    end

    coded_mesage = number_array.map {|number| number.chr}.join("")

    puts coded_mesage

end

puts "What you want to encript?"

message = gets.chomp

puts "Give me a number please"

key = gets.chomp.to_i

encript(message, key)