class MutualFundsController < ApplicationController

  def index
    @mutualfunds = MutualFund.all
  end

  def show
    @mutualfund = MutualFund.friendly.find(params[:id])
    #@mutualfund = MutualFund.find_by_id(params[:id])
    @stocks = @mutualfund.stocks

    # object = {}

    # object = @stocks.group(:industry).count
    # @array = []

    # @stocks.each do |x|
    # 	temp = x.industry
    # 	@array << temp
    # end 

    render :show

  end

end
