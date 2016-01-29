class AddMFandStockRefrenceToMutualFundStock < ActiveRecord::Migration
  def change
    add_reference :mutual_fund_stocks, :stock, index: true, foreign_key: true
    add_reference :mutual_fund_stocks, :mutual_fund, index: true, foreign_key: true
  end
end
