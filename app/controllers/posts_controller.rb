class PostsController < ApplicationController

	def index
		@posts = Post.all.sort_by{|p| p[:title]}
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
				format.html { render action: "new"}
			end
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		respond_to do |format|
			if @post.update_attributes(params[:post])
				format.html { redirect_to post_path(@post), notice: 'Post was successfully updated!'}
			else
				format.html { render action: 'edit', notice: 'Error!  Post was not updated.'}
			end
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		respond_to do |format|
			format.html { redirect_to posts_path, notice: 'Post was successfully deleted!'}
		end
	end
end