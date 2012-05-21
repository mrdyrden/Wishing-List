class UserWish < ActiveRecord::Base
  attr_accessible :user_id, :wish_id

  #----------Validations-----------#
  validates :user_id, :presence => true
  validates :wish_id, :presence => true

  #----------Associations-----------#
  belongs_to :user
  belongs_to :wish

end
