class CreateDeclarations < ActiveRecord::Migration
  def change
    create_table :declarations do |t|
      t.integer :rank

      t.belongs_to :draft
      t.belongs_to :item

      t.timestamps
    end
    add_index :declarations, :draft_id
    add_index :declarations, :item_id
    add_index :declarations, [:draft_id, :item_id]
  end
end
