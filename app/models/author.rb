class Author
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
end

def articles
  Article.all.select {|article| article.author == self}
end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end


  def magazines
    self.articles.map {|article| article.magazine}.uniq 
  end

  def show_specialties
    self.magazines.map {|article| article.category}.uniq
  end

  def self.most_active
    self.all.max_by {|author| author.articles.size}
  end

  def self.most_verbose
  most_article = Article.all.max_by {|article| article.content.length}
  most_article.author.name
  end

end
