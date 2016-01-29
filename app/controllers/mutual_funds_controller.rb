class MutualFundsController < ApplicationController

  def index
    @mutualfunds = MutualFund.all
  end

  def show
    # @mutualfund = MutualFund.friendly.find(params[:id])
    @mutualfund = MutualFund.find_by_id(params[:id])

    render :show
  end

end
