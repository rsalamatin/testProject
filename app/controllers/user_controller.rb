class UserController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@users = User.all
  end
end
