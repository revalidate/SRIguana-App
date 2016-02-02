class MutualFundsController < ApplicationController


  def index
    @mutualfunds = MutualFund.all
    @mutualfunds.each do |mf|
    	@stocks = mf.stocks
    	@industry_counts = @stocks.group(:industry).count
    end

  end

  def show
    @mutualfund = MutualFund.friendly.find(params[:id])
    @stocks = @mutualfund.stocks

    @industry_counts = @stocks.group(:industry).count
  
    if current_user !=nil
      @user = User.friendly.find(current_user.id)
    else
      current_user = nil
    end

  end

end