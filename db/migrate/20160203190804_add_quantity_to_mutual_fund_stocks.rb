class AddQuantityToMutualFundStocks < ActiveRecord::Migration
  def change
    add_column :mutual_fund_stocks, :quantity, :integer
  end
end
