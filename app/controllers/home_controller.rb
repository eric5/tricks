class HomeController < ApplicationController

  def index
    @tricks = Trick.all
  end
end
