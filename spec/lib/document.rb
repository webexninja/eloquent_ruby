class Document #This is a comment
	attr_accessor :title, :author, :content
	def initialize(author, title, content, read_only)
		@title   = title
		@author  = author
		@content = content
		@read_only = read_only
	end
	def words
		@content.split
	end
	def word_count
		words.size
	end
	def title=(new_title)
			@title = new_title unless @read_only
	end
	def find_document(title, author)
		#Body omitted
	end
	def add_authors(*names)
		@author+= "#{names.join(' ')}"
	end
	def load_font(specs)
		#load font as per specs hash
	end
	def average_word_length
		total = words.inject(0.0){|result, word| words.size + result }
		total / word_count
	end
	def about_me
		puts "I am #{self}."
		puts "My title is #{self.title}."
		puts "I have #{self.word_count} words."
	end
	def to_s
		"Document: #{title} by #{author}"
	end
	
end
class RomanceNovel < Document
	def initialize()
		#lots of steamy stuff omitted
	end
end
