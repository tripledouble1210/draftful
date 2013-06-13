class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.string :password_digest
      t.boolean :is_private, default: true
      t.boolean :is_snake, default: true

      t.timestamps
    end
  end
end
