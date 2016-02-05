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
    @mutualfunds = MutualFund.stocks_for_industry(params[:search])
    #TODO: What if params[:search] is empty? 1 letter?
  end

end
