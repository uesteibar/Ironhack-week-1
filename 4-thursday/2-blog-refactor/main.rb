
require './model/post'
require './model/blog'
require './model/footer'
require './blog_publisher'


my_blog = Blog.new(Footer)

my_blog.add_post(Post.new("Title 1", "1st body", Time.new))
my_blog.add_post(SponsoredPost.new("Title 2", "Body 2", Time.new))
my_blog.add_post(Post.new("Title 3", "Body 3", Time.new))
my_blog.add_post(Post.new("Title4", "Body4", Time.new))
my_blog.add_post(Post.new("Title5", "Body5", Time.new))
my_blog.add_post(Post.new("Title6", "Body6", Time.new))
my_blog.add_post(Post.new("Title7", "Body7", Time.new))
my_blog.add_post(Post.new("Title8", "Body8", Time.new))

my_blog.show_front_page(BlogPublisher.new)
