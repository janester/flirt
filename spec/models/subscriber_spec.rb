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
      subscriber = Subscriber.create(tagline:"a", bio:"b", gender:"c", age:18)
      expect(subscriber.id).to_not be nil
    end
    it "fails validation if tagline, bio, or gender are blank or age >= 18 years old" do
      subscriber = Subscriber.create
      expect(subscriber.id).to be nil
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
