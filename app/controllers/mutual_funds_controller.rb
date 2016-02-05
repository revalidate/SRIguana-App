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
    @stocks = @mutualfund.stocks

    @industry_counts = @mutualfund.stock_dollar_amounts_by_industry
    #Inaccurate variable name for line 16, should be something like
    #@investment_by_industry

    if current_user !=nil
      @user = User.friendly.find(current_user.id)
    else
      current_user = nil
    end
  end

  def search
    @title = "Search"
    @mutualfunds = MutualFund.industry_in_mf(params[:search])
  end

end
