class AddMinimumAgeAndMaximumAgeToBooks < ActiveRecord::Migration
  def change
    add_column :books, :minimum_age, :integer
    add_column :books, :maximum_age, :integer
  end
end
