class RenameEndColumnInCategory < ActiveRecord::Migration[5.0]
  def change
    rename_column :categories, :end, :end_at
  end
end
