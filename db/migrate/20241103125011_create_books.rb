class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :value
      t.integer :status, default: 0
      t.text :description
      t.string :publisher
      t.integer :number_of_pages
      t.integer :amount
      t.references :author, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
