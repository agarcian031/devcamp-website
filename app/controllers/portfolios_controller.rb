class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  def index 
    @portfolio_items = Portfolio.all
  end 
 

  def new 
    @portfolio_item = Portfolio.new 
  end 

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      
      end
    end
  end


  def edit 
  end 

  def update 

    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to @portfolio, notice: 'Portfolio was successfully updated. '}
        format.json { render :show, status: :ok, location: @portfolio}
      else 
        format.html {render :edit}
        format.json {render json: @portfolio.errors, status: :unprocessable_entity}
      end 
  end 
end 

  def destroy 
    @portfolio.destroy 
    respond_to do |format| 
      format.html { redirect_to portfolios_url, notice: 'Portfolio was removed. '}
      format.json { head :no_content}
    end 

  end 

  private 
  def portfolio_params 
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end 

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end 
end
