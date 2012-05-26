class WishAssitant < ActiveRecord::Base
  attr_accessible :assistant_id, :wish_id

  #----------Validations-----------#
  validated :assistant_id, :presence => true
  validated :wish_id, :presence => true

  #----------Associations-----------#
  belongs_to :user
  belongs_to :wish
  
end
# == Schema Information
#
# Table name: wish_assitants
#
#  id           :integer         not null, primary key
#  wish_id      :integer         not null
#  assistant_id :integer         not null
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

