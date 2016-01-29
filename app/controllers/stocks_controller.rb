class StocksController < ApplicationController
  def index
  	@stocks = Stock.all
  	redirect_to mutual_fund_path
  end
end
