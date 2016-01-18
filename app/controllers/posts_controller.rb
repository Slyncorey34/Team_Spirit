class PostsController < ApplicationController
	def index
	end

	def new
		@post = Post.new
	end

	def create
		@post= Post.where()

	end

	# def destroy
	# end

end



private
def post_params
	params.require(:post).permit(:body, :user)
end

# on the comments controller:
# @post=Post.first	brings

# @post = Post.find(params[post_id])
# @comment = @post.comments.build(comment_params)
# @comment.user = current_user
# @comment.save
# redirect to post_path(@post)

# private
# def comment_params
# 	params.require(:comment).permit(:content)
# end
