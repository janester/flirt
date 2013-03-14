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

require 'spec_helper'

describe User do
  describe ".new" do
    it "creates an instance of user" do
      user = User.new
      expect(user).to be_an_instance_of(User)
    end
    it "has email, username, password, and password confirmation" do
      user = User.new(email:"jane@jane.com", username:"janeliza", password:"abc", password_confirmation:"abc")
      expect(user.email).to eq "jane@jane.com"
      expect(user.username).to eq "janeliza"
      expect(user.password).to eq "abc"
      expect(user.password_confirmation).to eq "abc"
    end
    describe ".create" do
      it "has an id" do
        user = User.create(email:"jane@jane.com", username:"janeliza", password:"abc", password_confirmation:"abc")
        expect(user.id).to_not be nil
      end
      it "fails validation if username or email is blank while supplying password" do
        user = User.create(password:"a", password_confirmation:"a")
        expect(user.id).to be nil
      end
    end
  end
end
