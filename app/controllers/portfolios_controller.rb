class PortfoliosController < ApplicationController

   # GET /portfolio items 
   def index
    @portfolio_items = Portfolio.all
  end
end
