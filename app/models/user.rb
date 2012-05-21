class User < ActiveRecord::Base
  attr_accessible :name

  #----------Validations-----------#            
  validates :name, :presence => true

  #----------Associations-----------#
  has_many :user_wishes
  has_many :wishes, :through => :user_wishes

  has_many :user_hobbies
  has_many :hobies, :through => :user_hobbies

end
