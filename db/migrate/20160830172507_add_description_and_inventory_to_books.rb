class AddDescriptionAndInventoryToBooks < ActiveRecord::Migration
  def change
    add_column :books, :description, :text
    add_column :books, :inventory, :integer
  end
end
