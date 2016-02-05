class MutualFundsController < ApplicationController

  def index
    @title = "Mutal Funds"
    @mutualfunds = MutualFund.all
    # @mutualfunds.each do |mf|
    # 	@stocks = mf.stocks
    # 	@industry_counts = @stocks.group(:industry).count
    # end
  end

  def show
    @title = "Portfolio"
    @mutualfund = MutualFund.friendly.find(params[:id])
  end

  def search
    @title = "Search"
    @mutualfunds = MutualFund.industry_in_mf(params[:search])
  end

end
