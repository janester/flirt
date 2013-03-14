class SessionController < ApplicationController
  def new
  end
  def create
    @current_user = User.where(:email => params[:email]).first
    if @current_user.present? && @current_user.authenticate(params[:password])
      session[:user_id] = @current_user.id
    else
      session[:user_id] = nil
    end
  end

  def destroy
    session[:user_id] = nil
  end
end
