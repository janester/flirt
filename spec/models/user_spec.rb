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
    end
  end
end
