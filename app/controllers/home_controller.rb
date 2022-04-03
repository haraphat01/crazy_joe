class HomeController < ApplicationController
  def index
   @top =  [*Sale.all]
   
   
  
  end
end
