class Selection < ActiveRecord::Base
  attr_accessible :order

  belongs_to :commissioner
  belongs_to :item
  belongs_to :player
end
