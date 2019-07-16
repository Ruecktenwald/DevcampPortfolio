class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

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
      redirect_to portfolios_path, notice: "Successfully created a new portfolio!"
    else
      render new
    end
  end

  def edit

  end

  def update
    if @portfolio.update(portfolio_params)
      redirect_to portfolios_path, notice: "Successfully updated your portfolio!"
    else
      render edit
    end

  end

  def destroy

  end


  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle,:body)
  end

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
