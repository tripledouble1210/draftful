class AddUrlToRoom < ActiveRecord::Migration
  add_index :rooms, :url
end
