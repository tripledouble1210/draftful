# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130613071524) do

  create_table "assignments", :force => true do |t|
    t.integer  "order"
    t.integer  "draft_id"
    t.integer  "player_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "assignments", ["draft_id"], :name => "index_assignments_on_draft_id"
  add_index "assignments", ["player_id"], :name => "index_assignments_on_player_id"

  create_table "commissioners", :force => true do |t|
    t.datetime "start_time"
    t.time     "pick_time_limit"
    t.integer  "current_pick"
    t.integer  "draft_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "commissioners", ["draft_id"], :name => "index_commissioners_on_draft_id"

  create_table "declarations", :force => true do |t|
    t.integer  "rank"
    t.integer  "draft_id"
    t.integer  "item_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "declarations", ["draft_id", "item_id"], :name => "index_declarations_on_draft_id_and_item_id"
  add_index "declarations", ["draft_id"], :name => "index_declarations_on_draft_id"
  add_index "declarations", ["item_id"], :name => "index_declarations_on_item_id"
  add_index "declarations", ["rank"], :name => "index_declarations_on_rank"

  create_table "drafts", :force => true do |t|
    t.string   "password_digest"
    t.boolean  "is_private",      :default => true
    t.boolean  "is_snake",        :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rooms", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "maximum_occupancy"
    t.integer  "minimum_occupancy"
    t.integer  "draft_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "rooms", ["draft_id"], :name => "index_rooms_on_draft_id"
  add_index "rooms", ["url"], :name => "index_rooms_on_url"

  create_table "selections", :force => true do |t|
    t.integer  "order"
    t.integer  "item_id"
    t.integer  "commissioner_id"
    t.integer  "player_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "selections", ["commissioner_id"], :name => "index_selections_on_commissioner_id"
  add_index "selections", ["item_id", "player_id"], :name => "index_selections_on_item_id_and_player_id"
  add_index "selections", ["item_id"], :name => "index_selections_on_item_id"
  add_index "selections", ["order"], :name => "index_selections_on_order"
  add_index "selections", ["player_id"], :name => "index_selections_on_player_id"

end
