
require './model/blog'
require './model/post'
require 'date'

blog = Blog.new("uesteibar's awesome blog")

blog.add Post.new("First post title", DateTime.new(1995, 1, 1), "First post content")
blog.add SponsoredPost.new("Second post title", DateTime.new(1990, 1, 1), "Second post content")
blog.add Post.new("Third post title", DateTime.new(1985, 1, 1), "Third post content")
blog.add Post.new("Fourth post title", DateTime.new(2011, 1, 1), "Fourth post content")
blog.add Post.new("Fifth post title", DateTime.new(2001, 1, 1), "Fifth post content")
blog.add Post.new("Sixth post title", DateTime.new(2016, 1, 1), "Sixth post content")
blog.add Post.new("Seventh post title", DateTime.new(2015, 1, 1), "Seventh post content")
blog.add Post.new("Eighth post title", DateTime.new(1989, 1, 1), "Eighth post content")

blog.publish