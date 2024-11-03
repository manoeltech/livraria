class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :status
      t.integer :method_of_payment
      t.integer :discount
      t.integer :total
      t.references :shipping, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
