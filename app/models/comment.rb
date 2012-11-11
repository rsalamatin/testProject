class Comment < ActiveRecord::Base
  attr_accessible :commenter, :body
  belongs_to :post
  belongs_to :user
end
