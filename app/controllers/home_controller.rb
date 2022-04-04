class HomeController < ApplicationController
  def index
   @top =  Game.select('name').joins(:sales).distinct
   
   
  
  end
end
