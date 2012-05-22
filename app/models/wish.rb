class Wish < ActiveRecord::Base
  attr_accessible :name, :owner_id

  #----------Validations-----------#
  validates :name, :length => {:maximum => 80}
  validates :name, :presence => true

  #----------Associations-----------#
  belongs_to :user
  has_many :wish_assistants
  has_many :assistants, :through => :wish_assistants

end
