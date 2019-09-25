require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


author1 = Author.new("Morrison")
author2 = Author.new("Tolstoy")
author3 = Author.new("Dahl")
author4 = Author.new("Nesbo")

magazine1 = Magazine.new("Vogue", "fashion")
magazine2 = Magazine.new("Time Mag", "News")
magazine3 = Magazine.new("Economist", "News")
magazine4 = Magazine.new("Reader's Digest", "Literature")

article1 = Article.new(author1, magazine1, "When the wind blows", "life stories")
article2 = Article.new(author1, magazine4, "Chickens", "programming")
article3 = Article.new(author3, magazine3, "Chickens again", "Pi")
article4 = Article.new(author4, magazine3, "Ducks", "Duck huntings")







### DO NOT REMOVE THIS
binding.pry

0
