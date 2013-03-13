class Subscriber <  ActiveRecord::Base
  attr_accessible :user, :tagline, :bio, :bodytype, :location, :status, :ethnicity, :gender, :age, :occupation, :interests, :political, :religious, :income, :preferences, :education
  has_one :user, :as => :userable
end
