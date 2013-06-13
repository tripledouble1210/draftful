class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :order

      t.belongs_to :item
      t.belongs_to :commissioner
      t.belongs_to :player

      t.timestamps
    end
    add_index :selections, :commissioner_id
    add_index :selections, :item_id
    add_index :selections, :player_id
    add_index :selections, [:item_id, :player_id]
  end
end
