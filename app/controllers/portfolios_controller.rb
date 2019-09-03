class PortfoliosController < ApplicationController

  def index 
    @portfolio_items = Portfolio.all.order('created_at desc')
  end 

  def show 
  end 

  def edit 
  end 

  def update 
  end 

  def destroy 
  end 
end
