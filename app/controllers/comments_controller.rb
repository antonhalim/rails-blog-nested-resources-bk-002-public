class CommentsController < ApplicationController

	def create
		@post = Post.find(comment_params[:post_id])
		@post.comments.create(content: comment_params[:content])
		@post.save
		redirect_to "/posts/#{@post.id}"
	end
private

def comment_params
	params.require(:comment).permit(:content, :post_id)
end

end
