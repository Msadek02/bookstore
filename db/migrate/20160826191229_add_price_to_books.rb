class AddPriceToBooks < ActiveRecord::Migration
  def change
    add_column :books, :price, :decimal, precision: 12, scale: 2
  end
end
