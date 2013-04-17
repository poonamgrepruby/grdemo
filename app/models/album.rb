class Album < ActiveRecord::Base
  attr_accessible :album_name, :user_id
  has_many :comments, :as => :commentable
  belongs_to :user
end
