class ProfileController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@user_posts = Post.where(:user_id => current_user.id)
  	@user_comments = Comment.where(:user_id => current_user.id)
  	@user_friends = current_user.friends
  end
end
