class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :ticker
      t.string :industry
      t.text :description

      t.timestamps null: false
    end
  end
end
