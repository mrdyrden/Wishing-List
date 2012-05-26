class UserHobby < ActiveRecord::Base
  attr_accessible :hobby_id, :user_id

  #----------Validations-----------#
  validated :hobby_id, :presence => true
  validated :user_id, :presence => true

  #----------Associations-----------#
  belongs_to :user
  belongs_to :hobby

end
# == Schema Information
#
# Table name: user_hobbies
#
#  id         :integer         not null, primary key
#  user_id    :integer         not null
#  hobby_id   :integer         not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

