class MutualFundsController < ApplicationController

  def index
    @mutualfunds = MutualFund.all
  end

  def show
    @mutualfund = MutualFund.friendly.find(params[:id])
    #@mutualfund = MutualFund.find_by_id(params[:id])
    @stocks = @mutualfund.stocks

    # @industry_counts = {}
    @industry_counts = @stocks.group(:industry).count

    render :show

  end

end