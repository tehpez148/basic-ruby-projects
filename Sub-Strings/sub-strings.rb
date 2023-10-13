## program to take in a word and an array of valid substrings. 
## returns a hash listing each substring that was found in the origin string, and the frequency



def sub_string (string, dictionary)
    og_string = string.downcase
    og_array = og_string.split(" ")
    p og_array

    new_hash = {}

    dictionary.each do |subs|
        count = og_string.scan(subs).size
        if count > 0
            new_hash[subs] = count
        end
    end

    p new_hash



    ##dictionary.select{|subs| og_string.include? subs}



    
    ##result = Hash.new(0)
    ##new_dict.each { |word| result[word] += 1 }
    ##p result
    
    



end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

sub_string("below low", dictionary)

    