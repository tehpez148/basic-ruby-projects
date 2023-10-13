## program to take in a word and an array of valid substrings. 
## returns a hash listing each substring that was found in the origin string, and the frequency



def sub_string (string, dictionary)
    og_string = string
    og_array = og_string.split("")
    p og_array

    new_dict = dictionary.select{|subs| og_string.include? subs}

    p new_dict

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

sub_string("below it howdy", dictionary)

    