class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@post.comments << Comment.create(content: params[:Content])
		@post.save
		redirect_to "/posts/#{@post.id}"
	end
private

def comment_params
	params.require(:post).permit(:post_id, comments_attributes: [:content])
end

end
