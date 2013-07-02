class PostsController < ApplicationController

	def index
		@posts = Post.all
		@name = "Silas Rioux"
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])
		respond_to do |format|
			if @post.save
				format.html { redirect_to post_path(@post), notice: 'Blog Post successfully created.'}
			else
				format.html { render action: "new", notice: "ERROR!"}
			end
		end
	end

end