class Assignment < ActiveRecord::Base
  attr_accessible :order

  belongs_to :player
  belongs_to :draft
end
