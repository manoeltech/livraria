class CreateShippings < ActiveRecord::Migration[7.1]
  def change
    create_table :shippings do |t|
      t.string :name
      t.integer :value
      t.integer :status

      t.timestamps
    end
  end
end
