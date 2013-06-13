class CreateCommissioners < ActiveRecord::Migration
  def change
    create_table :commissioners do |t|
      t.datetime :start_time
      t.time :pick_time_limit
      t.integer :current_pick

      t.belongs_to :draft

      t.timestamps
    end
    add_index :commissioners, :draft_id
  end
end
