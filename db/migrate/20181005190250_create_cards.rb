class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :Name
      t.string :Manacost
      t.string :TypeText
      # The commented members were available on the site example card but not on the json file
      #t.string :Rarity
      t.string :Text
      #t.string :Flavor
      #t.string :Artist
      #t.integer :Number
      t.integer :Power
      t.integer :Thoughness

      t.timestamps
    end
  end
end
