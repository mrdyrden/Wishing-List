class Hobby < ActiveRecord::Base
  attr_accessible :name

  #----------Validations-----------#
  validates :name, :presence => true
  validates :name, :uniqueness => { :case_sensitive => false }

  #----------Associations-----------#


end
# == Schema Information
#
# Table name: hobbies
#
#  id         :integer         not null, primary key
#  name       :string(255)     not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

