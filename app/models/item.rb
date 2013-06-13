class Item < ActiveRecord::Base
  attr_accessible :name

  has_one :declaration
  has_one :draft, through: :declaration
  has_one :selection
  has_one :player, through: :selection
end
