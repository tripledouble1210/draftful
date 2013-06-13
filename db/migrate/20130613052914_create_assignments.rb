class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :order

      t.belongs_to :draft
      t.belongs_to :player

      t.timestamps
    end
    add_index :assignments, :draft_id
    add_index :assignments, :player_id
  end
end
