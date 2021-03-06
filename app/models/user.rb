# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  userable_id     :integer
#  userable_type   :string(255)
#

class User <  ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :username, :password, :password_confirmation
  belongs_to :userable, polymorphic:true
  validates :email, presence:true
  validates :username, presence:true
end
