class Subscriber <  ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :username, :password, :password_confirmation
end
