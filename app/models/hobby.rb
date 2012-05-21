class Hobby < ActiveRecord::Base
  attr_accessible :name

  #----------Validations-----------#
  validates :name, :presence => true
  validates :name, :uniqueness => { :case_sensitive => false }
end
