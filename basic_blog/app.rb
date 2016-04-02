require_relative "lib/blog.rb"
require_relative "lib/post.rb"

blog = Blog.new
blog.add_post(Post.new("First Post", Date.today, "Hey there! This is the content of my first post!", false))
blog.add_post Post.new("Second Post", Date.today, "Hey there! This is the content of my second post!", true)
blog.add_post Post.new("Third Post", Date.today, "Hey there! This is the content of my third post!", false)
blog.add_post Post.new("Fourth Post", Date.today, "Hey there! This is the content of my fourth post!", false)
blog.add_post Post.new("Fifth Post", Date.today, "Hey there! This is the content of my 5th post!", false)
blog.add_post Post.new("Sixth Post", Date.today, "Hey there! This is the content of my 6th post!", false)
blog.add_post Post.new("Seventh Post", Date.today, "Hey there! This is the content of my 7th post!", false)
blog.add_post Post.new("Eigth Post", Date.today, "Hey there! This is the content of my 8th post!", false)


blog.publish_front_page
blog.next_page
