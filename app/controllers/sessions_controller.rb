class SessionsController < ApplicationController

  def new
    redirect_to home_path if current_user
  end

  def create
  end

  def destroy
    session[:user_id] = nil
  end
end
