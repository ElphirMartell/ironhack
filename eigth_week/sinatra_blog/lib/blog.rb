require 'pry'

class Blog
	attr_reader :posts
	def initialize
		@posts = []
	end

	def add_post(post)
		@posts.push(post)
		puts @posts
	end

	def show_title
		@posts.each do |post|
			puts post.title
		end
	end

	def show_date
		@posts.each do |post|
			puts post.date
		end
	end

	def latest_post
		@posts.sort {|x,y| y.date <=> x.date}
	end
end