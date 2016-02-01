class UserMutualFund < ActiveRecord::Base
  belongs_to :user
  belongs_to :mutual_fund
end
