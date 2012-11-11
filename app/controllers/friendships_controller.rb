class FriendshipsController < ApplicationController
	def create
		@friendship = current_user.friendships.build(:friend_id => params[:friend_id])
  		if @friendship.save
    		flash[:notice] = "Added friend."
    		redirect_to posts_path
  		else
    		flash[:notice] = "Unable to add friend."
    		redirect_to posts_path
		end
	end
end
