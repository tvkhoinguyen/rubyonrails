class PostController < ApplicationController
	def index
		#comment key là @
		@posts = Post.all
	end
	####

	def show
		@post = Post.find(params[:id])
	end
	##

	def new
		@post = Post.new
	end
	##

	def create
		@post = Post.new(params[:post])
		if @post.save
			redirect_to post_index_path, :notice =>'your post was save'
		else
			render "new"
		end
	end
	##

	def edit
		@post = Post.find(params[:id])
	end
	##


	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(params[:post])
			redirect_to post_index_path, :notice => "your post was updated"
		else
			render "edit"
		end	
	end
	##


	def destroy
		@post  = Post.find(params[:id])
		@post.destroy
		redirect_to post_index_path, :notice=>"Your post has been deleted"
	end
end
