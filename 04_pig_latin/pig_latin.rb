def translate(words)
	vowels = ["a", "e", "i", "o", "u"]
	word_string = words.split(" ")
	word_string.map! do |word|
		first = word[0]
		second = word[1]
		third = word[2]
		qu = "qu"
		if vowels.include?(first)
			"#{word}ay"
		elsif vowels.include?(first) == false && vowels.include?(second) == false && vowels.include?(third) == false
			word.tr!(first, "") 
			word.tr!(second, "")
			word.tr!(third, "")
			"#{word}#{first}#{second}#{third}ay"
		elsif vowels.include?(first) == false && vowels.include?(second) == false && ("qu" == word[1..2]) == false
			word.tr!(first, "") 
			word.tr!(second, "")
			"#{word}#{first}#{second}ay"
		elsif vowels.include?(third) && ("qu" == word[1..2])
			word.tr!(first, "")
			word.tr!(second, "")
			word.tr!(third, "")
			"#{word}#{first}#{second}#{third}ay"
		elsif vowels.include?(second) && ("qu" == word[0..1]) 
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
