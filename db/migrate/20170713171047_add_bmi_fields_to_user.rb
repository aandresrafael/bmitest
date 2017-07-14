class AddBmiFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :weight, :decimal, precision: 5, scale: 2
    add_column :users, :height, :decimal, precision: 5, scale: 2
    add_column :users, :bmi, :decimal, precision: 5, scale: 2
    add_column :users, :category_id, :integer
  end
end
