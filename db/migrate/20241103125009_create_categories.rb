class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :status, default: 0
      t.boolean :rentable, default: true

      t.timestamps
    end
  end
end
