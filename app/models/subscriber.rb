class Subscriber <  ActiveRecord::Base
  attr_accessible :user
  has_one :user, :as => :userable
end
