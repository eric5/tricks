class HomeController < ApplicationController

  def index
    @tricks = Trick.order(created_at: :desc).page(params[:page])
  end
end
