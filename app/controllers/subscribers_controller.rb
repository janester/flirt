class SubscribersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.create(params[:user])
    s = Subscriber.create(tagline:"Enter your personal tagline", bio:"Enter your personal bio", gender:"Enter your gender", age:100)
    s.user = @user
    s.save
  end
  def index
  end
end