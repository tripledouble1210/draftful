class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :url
      t.integer :maximum_occupancy
      t.integer :minimum_occupancy

      t.belongs_to :draft

      t.timestamps
    end
    add_index :rooms, :draft_id
  end
end
