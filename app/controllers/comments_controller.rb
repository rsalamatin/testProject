class CommentsController < ApplicationController
  before_filter :authenticate_user!
  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.build(params[:comment])
  	@comment.user = current_user
  	@comment.save
  	redirect_to post_path(@post)
  end
end
