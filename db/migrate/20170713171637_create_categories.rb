class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :description
      t.decimal :start, precision: 5, scale: 2
      t.decimal :end, precision: 5, scale: 2
      t.timestamps
    end
  end
end
