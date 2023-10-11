## program to take in a word and an array of valid substrings. 
## returns a hash listing each substring that was found in the origin string, and the frequency



def sub_string (string, dictionary)
    og_string = string

    dictionary.map{|subs| og_string.include? subs}
    