require 'colorize'

$page = 1

class Blog

	attr_accessor(:container_posts)

	def initialize
		@container_posts = []
	end

	def add_post(post)
		@container_posts.unshift(post)
	end

	attr_accessor(:current_page)

	def publish_front_page(current_post =1)

		current_post.upto(current_post+2) do |x|  
				if @container_posts[x].sponsored == true 
					puts "******* #{@container_posts[x].title} ********".red
				else
					puts @container_posts[x].title
				end
			puts @container_posts[x].text

		end

		change_page

	end

		def change_page

			puts "prev or next"
			change_page = gets.chomp
			if change_page == "prev"
					$page -= 3
				elsif change_page == "next"
					$page += 3
				end
			publish_front_page($page)
					
		end
end

class Post

	attr_reader(:title,:date,:text,:sponsored)

	def initialize(title,text,sponsored = false)
		@title = title 
		@date = Time.new
		@text = text
		@sponsored = sponsored 
	end

end


ironblog = Blog.new
week1 = Post.new("Week 1","Ruby is awesome")
week2 = Post.new("Week 2","Ruby still awesome",true)
week3 = Post.new("Week 3","Ruby is awesome")
week4 = Post.new("Week 4","Ruby still awesome",true)
week5 = Post.new("Week 5","Ruby is awesome")
week6 = Post.new("Week 6","Ruby still awesome",true)
week7 = Post.new("Week 7","Ruby is awesome")
week8 = Post.new("Week 8","Ruby still awesome",true)

ironblog.add_post(week1)
ironblog.add_post(week2)
ironblog.add_post(week3)
ironblog.add_post(week4)
ironblog.add_post(week5)
ironblog.add_post(week6)
ironblog.add_post(week7)
ironblog.add_post(week8)

ironblog.publish_front_page