#write your code here
def echo(words)
	words
end

def shout(words)
	words.upcase
end

def repeat(word, times=2)
	stuff = ((word + " ") * times)
	stuff.chomp(" ")
end

def start_of_word(word, index)
	start = 0
	finish = index -1
	word[start..finish]
end

def first_word(words)
	words.split.first
end

def titleize(words)
	words.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = words.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ") # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
  phrase  
end

