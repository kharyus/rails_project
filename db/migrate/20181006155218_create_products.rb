class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :Name
      t.decimal :Price
      t.integer :Quantity
      t.references :material, foreign_key: true

      t.timestamps
    end
  end
end
