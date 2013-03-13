class SubscribersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.create(params[:user])
    s = Subscriber.create
    s.user = @user
    s.save
  end
  def index
  end
end