class Author 
  
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def add_post(post)
    @@all << post 
    @posts << post  
    post.author = self 
  end 

  def posts
    @posts
  end 
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    @@all << post 
    post.author = self
  end 
  
  def self.post_count
    @@all.count 
  end 
end 