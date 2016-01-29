class Stock < ActiveRecord::Base
	has_many :mutualfundstocks
	has_many :mutual_funds, :through => :mutualfundstocks
end
