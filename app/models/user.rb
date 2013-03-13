class User <  ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :username, :password, :password_confirmation
  belongs_to :userable, :polymorphic => true
end
