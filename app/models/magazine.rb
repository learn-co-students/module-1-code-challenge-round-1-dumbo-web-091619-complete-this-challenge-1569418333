class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end


    def articles
      Article.all.select {|article| article.magazine == self }
    end
  
    def article_titles
      self.articles.map {|article| article.title}
    end

    def contributors
      self.articles.map {|article| article.author}
    end

    def word_count
     word_array = self.articles.map {|article| article.content.length} 
     word_array.reduce(0) {|sum, wordcount| sum + wordcount}
    end

    def self.find_by_name(name)
      self.all.find {|magazine| magazine.name == name}
    end

end
