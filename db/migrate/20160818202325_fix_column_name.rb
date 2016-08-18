class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :books, :author, :author_id
    change_column :books, :author, 'integer USING CAST(column_name AS integer)'
  end
end
