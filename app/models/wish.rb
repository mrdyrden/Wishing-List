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
# == Schema Information
#
# Table name: wishes
#
#  id         :integer         not null, primary key
#  name       :string(255)     not null
#  user_id    :integer         not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

