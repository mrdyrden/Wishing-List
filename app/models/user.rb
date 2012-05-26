class User < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :password
  attr_accessible :email


  #----------Validations-----------#            
  validates :name, :presence => true
  validates :email, :presence => true
  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..40 }

  #----------Associations----------#
  has_many :wishes

  has_many :user_hobbies
  has_many :hobies, :through => :user_hobbies


  #----------Functions-------------#
  # Checking that the password matches the password in User.password
  def self.authenticate(email,password)
    user = User.find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(user,password)
  
  end

  def has_password?(user,submitted_password)
    return true if user.password == submitted_password
  else false
  end



end
# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)     not null
#  email      :string(255)     not null
#  password   :string(255)     not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

