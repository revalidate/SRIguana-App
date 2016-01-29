class MutualFundStock < ActiveRecord::Base
	belongs_to :stock
	belongs_to :mutual_fund
end
