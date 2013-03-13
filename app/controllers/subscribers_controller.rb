class SubscribersController < ApplicationController
  def new
    @subsr = Subscriber.new
  end
  def create
    @subsr = Subscriber.create(params[:subscriber])
  end
  def index
  end
end