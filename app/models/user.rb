class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :username, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :goals
  has_many :friends


	validates :name, :presence => true, :length => { :minimum => 4 }
	validates :username, :presence => true, :length => { :minimum => 4 }, uniqueness: { case_sensitive: false }
end
