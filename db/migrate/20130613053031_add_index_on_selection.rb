class AddIndexOnSelection < ActiveRecord::Migration
  def change
    add_index :selections, :order
  end
end
