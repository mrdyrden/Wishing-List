class WishAssitant < ActiveRecord::Base
  attr_accessible :assistant_id, :wish_id

  #----------Validations-----------#
  validated :assistant_id, :presence => true
  validated :wish_id, :presence => true

  #----------Associations-----------#
  belongs_to :user
  belongs_to :wish
  
end
