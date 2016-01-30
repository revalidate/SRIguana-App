class Stock < ActiveRecord::Base
	has_many :mutual_fund_stocks
	has_many :mutual_funds, :through => :mutual_fund_stocks, dependent: :destroy
end
