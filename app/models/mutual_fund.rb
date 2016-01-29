class MutualFund < ActiveRecord::Base
	include FriendlyID
	friendly_id :name

	has_many :mutualfundstocks
	has_many :stocks, :through => :mutualfundstocks
end
