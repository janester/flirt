require "spec_helper"

describe Subscriber do
  describe ".new" do
    it "creates an instance of Subscriber" do
      subscriber = Subscriber.new
      expect(subscriber).to be_an_instance_of(Subscriber)
    end
  end

  describe "#user" do
    it "has a user" do
      subscriber = Subscriber.new
      user = User.new
      subscriber.user = user
      expect(subscriber.user).to be_an_instance_of(User)
    end
  end

  describe ".create" do
    it "has an id" do
      subscriber = Subscriber.create
      expect(subscriber.id).to_not be nil
    end
  end

  describe "#metadata" do
    it "has subscriber properties" do
      subscriber = Subscriber.create(tagline:"a", bio:"b", preferences:"c, d, e", bodytype:"f", location: "g", status: "h", ethnicity:"i", gender:"j", age:1 , occupation:"l", interests:"m", political:"n", religious:"o", education:"p", income:1)
      expect(subscriber.tagline).to eq "a"
      expect(subscriber.bio).to eq "b"
      expect(subscriber.preferences).to eq "c, d, e"
      expect(subscriber.bodytype).to eq "f"
      expect(subscriber.location).to eq "g"
      expect(subscriber.status).to eq "h"
      expect(subscriber.ethnicity).to eq "i"
      expect(subscriber.gender).to eq "j"
      expect(subscriber.age).to eq 1
      expect(subscriber.occupation).to eq "l"
      expect(subscriber.interests).to eq "m"
      expect(subscriber.political).to eq "n"
      expect(subscriber.religious).to eq "o"
      expect(subscriber.income).to eq 1
    end
  end
end
