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

    @h = { "a" => 100, "b" => 200 }
    
    # @temp = @industry_counts["Tobacco"]
    # @temp2 = @industry_counts["Technology"]
    # @temp = @industry_counts[:industry]

    # @industry_counts.each_pair do |key,value|
    	
    # 	# temp2 = temp / @stocks.length
    # 	# temp3 = temp2 * 100
    # 	# temp3
    # end

    # @array = []

    # @stocks.each do |x|
    # 	temp = x.industry
    # 	@array << temp
    # end 

    render :show

  end

end