class CreateMutualFunds < ActiveRecord::Migration
  def change
    create_table :mutual_funds do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
