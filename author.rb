class Author
   attr_reader :name
   @@all =[]
   def initialize(name)
     @name = name
     @@all << self
   end

   def self.all
     @@all
   end

   def books
     Book.all.select{ |book|
     book.author==self  }
   end

   def write_book(title,word_count)
     Book.new(self,title,word_count)
   end

   def total_words
     books.reduce(0){
       |sum,book|sum+book.word_count
     }
   end

   def self.most_words
     max=0
     inst=nil
     Book.all.each do |book|
       if book.author.total_words>max
         max=book.author.total_words
         inst=book.author
       end
     end
     inst
  end

end
