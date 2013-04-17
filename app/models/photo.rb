class Photo < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :comments, :as => :commentable
  belongs_to :album
end
