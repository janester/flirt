class Administrator <  ActiveRecord::Base
  attr_accessible :user, :role, :ssn, :phone
  has_one :user, :as => :userable
end
