class TagsController < ApplicationController

	def index
	    @tags = Tag.all
	end

	def create
	  @tags = Tag.new(tag_params)
	  @tags.article_id = params[:article_id]

	  @tags.save

	  redirect_to article_path(@tags.article)
	end


	def show
  		@tags = Tag.find(params[:id])
	end

	def destroy
		@tags = Tag.find(params[:id]).destroy
		flash.notice = "Tag '#{@tags.name}' destroyed!"
		redirect_to(@tags)		
	end

end
