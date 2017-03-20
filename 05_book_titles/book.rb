class Book
	attr_writer :title
	def title
		@title.capitalize
		words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but", "in", "an", "of"]
   		phrase = @title.split(" ")
   		first = 0
   		phrase.map do |word|
       		if words_no_cap.include?(word) && first != 0
       			first += 1
           		word
       		 else
       		 	first += 1
           		word.capitalize
        	end
  	 	 end.join(" ")
	end

end




