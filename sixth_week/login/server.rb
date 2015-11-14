require 'sinatra'
require 'pry'
require "sinatra/reloader" if development
require_relative('./models/login.rb')

get "/login" do
	erb(:login)
end

get "/access" do
	erb(:access)
end

get "/notaccess" do
	erb(:notaccess)
end

post "/login" do
	usuario = params[:key]
	password = params[]
end


=begin
# server.rb
require "sinatra"

get "/add" do
  erb(:add)
end
=end