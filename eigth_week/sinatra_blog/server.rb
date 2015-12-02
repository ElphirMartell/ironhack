require 'date'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require_relative('./lib/blog.rb')
require_relative('./lib/post.rb')


enable(:sessions)


blog = Blog.new
blog.add_post(Post.new("lorem ipsum", DateTime.new(2001,2,3),"asfs", "JRR Tolkien", "épica medieval"))
blog.add_post(Post.new("hola", DateTime.new(2015, 4, 3), "weqrw asfd", "George RR Martin", "épica medieval"))
blog.add_post(Post.new("adios", DateTime.new(2005, 3, 6), "faewqew grewqw", "Tom Wolfe", "crimen"))



get "/blog" do
	@blog = blog.latest_post
	@text = blog.posts
	erb(:blog, layout: :sinatra_blog_layout)
end

get "/detailed_page/:id" do
	@blog = blog.latest_post[params[:id].to_i]
	erb(:detailed_page, layout: :sinatra_blog_layout)
end

get "/new_post" do 
	erb(:new_post, layout: :sinatra_blog_layout)
end

post '/new_post' do
	post = Post.new(params[:title], DateTime.parse(params[:date]), params[:text], params[:author], params[:category])
	blog.add_post(post)
	session[:saved_value] = params[:name]
	redirect to('/blog')
end






