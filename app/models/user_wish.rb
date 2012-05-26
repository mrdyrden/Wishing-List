class UserWish < ActiveRecord::Base
  attr_accessible :user_id, :wish_id

  #----------Validations-----------#
  validates :user_id, :presence => true
  validates :wish_id, :presence => true

  #----------Associations-----------#
  belongs_to :user
  belongs_to :wish

end
# == Schema Information
#
# Table name: user_wishes
#
#  id         :integer         not null, primary key
#  user_id    :integer         not null
#  wish_id    :integer         not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

