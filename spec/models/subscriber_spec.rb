require "spec_helper"

describe Subscriber do
  describe ".new" do
    it "creates an instance of Subscriber" do
      subscriber = Subscriber.new
      expect(subscriber).to be_an_instance_of(Subscriber)
    end
    it "has email, username, password, and password confirmation" do
      subscriber = Subscriber.new(email:"jane@jane.com", username:"janeliza", password:"abc", password_confirmation:"abc")
      expect(subscriber.email).to eq "jane@jane.com"
      expect(subscriber.username).to eq "janeliza"
      expect(subscriber.password).to eq "abc"
      expect(subscriber.password_confirmation).to eq "abc"
    end
    it "has an id" do
      subscriber = Subscriber.create(email:"jane@jane.com", username:"janeliza", password:"abc", password_confirmation:"abc")
      expect(subscriber.id).to_not be nil
    end

  end
end
