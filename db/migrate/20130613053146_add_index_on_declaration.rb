class AddIndexOnDeclaration < ActiveRecord::Migration
  def change
    add_index :declarations, :rank
  end
end
