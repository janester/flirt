# == Schema Information
#
# Table name: subscribers
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  tagline     :string(255)
#  bio         :string(255)
#  preferences :string(255)
#  education   :string(255)
#  bodytype    :string(255)
#  location    :string(255)
#  status      :string(255)
#  ethnicity   :string(255)
#  gender      :string(255)
#  age         :integer
#  occupation  :string(255)
#  interests   :string(255)
#  political   :string(255)
#  religious   :string(255)
#  income      :decimal(, )
#

class Subscriber <  ActiveRecord::Base
  attr_accessible :user, :tagline, :bio, :bodytype, :location, :status, :ethnicity, :gender, :age, :occupation, :interests, :political, :religious, :income, :preferences, :education
  has_one :user, :as => :userable
  validates :tagline, presence:true
  validates :bio, presence:true
  validates :gender, presence:true
  validates :age, presence:true, :numericality => { :greater_than => 17 }
end
