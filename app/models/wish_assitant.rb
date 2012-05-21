class WishAssitant < ActiveRecord::Base
  attr_accessible :assistant_id, :wish_id

  #----------Validations-----------#
  validated :assistant_id, :presence => true
  validated :wish_id, :presence => true
end
