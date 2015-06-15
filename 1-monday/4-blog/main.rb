
require './model/blog'
require './model/post'
require 'date'

blog = Blog.new("uesteibar's awesome blog")

blog.add Post.new("First post title", DateTime.new(1995, 1, 1), "First post content")
blog.add Sponsored_Post.new("Second post title", DateTime.new(1990, 1, 1), "Second post content")

blog.publish_front_page