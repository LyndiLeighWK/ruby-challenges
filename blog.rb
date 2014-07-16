# class for whole page, creates blog
class Blog
	#gets and sets title, and sum of blog posts
	attr_accessor :title, :all_blog_posts
	#initializes pubish time, blog title and all blogs posts array 
	def initialize
		@post_time = Time.now
		puts "What would you like to call your blog?"
		@title = gets.chomp
		@all_blog_posts = []
	end

	#create new blog post object
	
	def new_blog_post
		new_blog_post = Blog_Post.new

		#merges new blog post into full blog post list
		@all_blog_posts << new_blog_post
	end

	#get all blog posts
	def collect_blog_posts
		return @all_blog_posts
	end

	#sends all blog posts through publish method to puts each individual item in blog post
	def publish(all_blog_posts)
		@all_blog_posts.sort! { |a,b| a.post_time <=> b.post_time }
		all_blog_posts.each do |blog_post|
		puts blog_post.title
		puts blog_post.post_time
		puts blog_post.content
	end
end
end

class Blog_Post
	#allows to set and get title, post time and content
	attr_accessor :title, :post_time, :content
	#initializes post time, title and content before running rest of object
	def initialize
		@post_time = Time.now
		puts "What would you like to name you post?"
		@title = gets.chomp
		puts "Type your content here:"
		@content = gets.chomp
	end
	
end

#creates new blog
my_blog = Blog.new
#creates new blog post
first_blog_post = Blog_Post.new
#collects all blog posts
all_blog_posts = my_blog.collect_blog_posts
#inspects blog element
puts my_blog.inspect
#publishes all posts
my_blog.publish(all_blog_posts)