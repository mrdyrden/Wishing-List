class Wish < ActiveRecord::Base
  attr_accessible :name, :owner_id

  #----------Validations-----------#
  validates :name, :length => {:maximum => 80}
  validates :name, :presence => true
end
