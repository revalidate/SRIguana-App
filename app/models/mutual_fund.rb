class MutualFund < ActiveRecord::Base
	include FriendlyID
	friendly_id :name
end
