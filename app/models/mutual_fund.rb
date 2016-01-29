class MutualFund < ActiveRecord::Base
	# include FriendlyID
	# friendly_id :name

	has_many :mutual_fund_stocks
	has_many :stocks, :through => :mutual_fund_stocks
end
