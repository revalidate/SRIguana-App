class CreateUserMutualFunds < ActiveRecord::Migration
  def change
    create_table :user_mutual_funds do |t|
      t.references :user, index: true, foreign_key: true
      t.references :mutual_fund, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
