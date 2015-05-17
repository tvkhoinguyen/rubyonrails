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
		
	end
	##


	def update
		
	end
	##


	def destroy
		
	end
end
