class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name,
  :dob, :location, :contact_number, :gender

  
  #validates :first_name, :presence => { :message => "please enter first name" }
   #attr_accessible :title, :body,
  has_many :posts
  has_many :albums
  has_many :comments
  has_many :invites
  
  #validates :first_name, :presence => true
  validates :first_name, :presence => true
end
