class User < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :password
  attr_accessible :email

  #----------Validations-----------#            
  validates :name, :presence => true
  validates :password, :presence => true
  validates :email, :presence => true

  #----------Associations-----------#
  has_many :wishes

  has_many :user_hobbies
  has_many :hobies, :through => :user_hobbies

end
