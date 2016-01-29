class CreateMutualFundStocks < ActiveRecord::Migration
  def change
    create_table :mutual_fund_stocks do |t|

      t.timestamps null: false
    end
  end
end
