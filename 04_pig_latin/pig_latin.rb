def translate(words)
	vowels = ["a", "e", "i", "o", "u"]
	word_string = words.split(" ")
	word_string.map! do |word|
		first = word[0]
		second = word[1]
		third = word[2]
		if vowels.include?(first)
			"#{word}ay"
		elsif vowels.include?(first) == false && vowels.include?(second) == false
			word.tr!(first, "") 
			word.tr!(second, "")
			"#{word}#{first}#{second}ay"
		else
			word.tr!(first, "")
			"#{word}#{first}ay"
		end	
	end
	word_string.join(" ")

end