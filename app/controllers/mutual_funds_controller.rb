class MutualFundsController < ApplicationController

  def index
    @mutualfunds = MutualFund.all
    @mutualfunds.each do |mf|
    	@stocks = mf.stocks
    	@industry_counts = @stocks.group(:industry).count
      #Don't believe we need the code on line 6 or 7 anymore
    end
  end

  def show
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
    @mutualfunds = MutualFund.industry_in_mf(params[:search])
  end

end