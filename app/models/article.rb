class Article
attr_reader :author, :magazine, :title
attr_accessor :content

@@all = []

    def initialize(author, magazine, title, content)
    @author = author
    @magazine = magazine
    @title = title
    @content = content
    @@all << self
    end

    def self.all
        @@all
    end
1
    def article_name
        self.author.name
    end

    def article_magazine
        self.magazine.name
    end

end
