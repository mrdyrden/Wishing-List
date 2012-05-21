class UserHobby < ActiveRecord::Base
  attr_accessible :hobby_id, :user_id

  #----------Validations-----------#
  validated :hobby_id, :presence => true
  validated :user_id, :presence => true

  #----------Associations-----------#
  belongs_to :user
  belongs_to :hobby

end
