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

  def search
    @mutualfunds = MutualFund.all
    if params[:search]
      @mutualfunds = MutualFund.search(params[:search]).order("created_at DESC")
      if @mutualfunds.present?
        @mutualfunds
      end
    else
      @mutualfunds = MutualFund.all.order('created_at DESC')
    end    
  end

end