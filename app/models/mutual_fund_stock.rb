class MutualFundStock < ActiveRecord::Base
	belongs_to :stock #, dependent: :destroy
	belongs_to :mutual_fund #, dependent: :destroy
end
