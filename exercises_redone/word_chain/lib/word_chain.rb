class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

	def find_chain (start_word, final_word)
		intermediate_word = start_word
		puts start_word
		i=0
		while i < final_word.length
			letter = start_word[i]
			if letter == final_word[i]
				i = i +1
			else
				intermediate_word[i] = final_word[i]
				@dictionary.exists?(intermediate_word)
					if true
						start_word = intermediate_word
						puts start_word
					end
			end
		end 
	end
end
