class MutualFund < ActiveRecord::Base
	include FriendlyId
	friendly_id :name, use: :slugged

	has_many :mutual_fund_stocks
	has_many :stocks, :through => :mutual_fund_stocks, dependent: :destroy
end
