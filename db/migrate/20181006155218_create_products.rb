class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :Name
      t.decimal :Price
      t.integer :Quantity

      t.timestamps
    end
  end
end
