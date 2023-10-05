## create a function that takes two parameters, a word and a number, to create a "Caeser Cipher". 
## program to take a word, seperate it out into seperate characters, convert characters to numbers
##shift numbers along the alphabet using 'unicode'
##re-convert new numbers into characters
##concatenate characters together
##return new string 


def caeser_cipher(string, number)
    orig_array = string.split("")
    p orig_array

    orig_num_array = orig_array.map {|char| char.ord}
    p orig_num_array

    new_num_array =[]

    orig_num_array.each do |char|
        if char.between?(97,122)
            char = char + number
            char = (char - 122) + 96 until char < 123
            new_num_array.push(char)
        elsif char.between?(65,90)
            char = char + number
            char = (char - 90) + 64 until char < 91
            new_num_array.push(char)        
        else
            new_num_array.push(char)
        end
    end

    p new_num_array

    new_array = new_num_array.map {|char| char.chr}
    p new_array

    new_string = new_array.join

    p new_string



end

caeser_cipher("Goodness Gracious Me!", 4)

##Now it works lol 