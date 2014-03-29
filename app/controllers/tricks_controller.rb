class TricksController < ApplicationController

  def new
    @trick = Trick.new
  end

  def create
    @trick = Trick.new(trick_params)
    @trick.user_id = session[:user_id]
    if @trick.save
      flash[:success] = "You have created a great trick."
      redirect_to root_path
    else
      redirect_to :new
    end
  end

  private

  def trick_params
    params.require(:trick).permit(:title, :content)
  end
end
