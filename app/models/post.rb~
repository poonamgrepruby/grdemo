class Post < ActiveRecord::Base
  attr_accessible :content, :title, :user_id
   has_many :comments, :as => :commentable
  belongs_to :user
end
