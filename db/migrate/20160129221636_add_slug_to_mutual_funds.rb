class AddSlugToMutualFunds < ActiveRecord::Migration
  def change
    add_column :mutual_funds, :slug, :string
    add_index :mutual_funds, :slug
  end
end
