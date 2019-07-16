class PortfoliosController < ApplicationController

  def index
    @portfolios = Portfolio.all
  end

  def show
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      redirect_to portfolios_path, notice: "Successfully created a new Portfolio!"
    else
      render new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end


  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle,:body)
  end
end
