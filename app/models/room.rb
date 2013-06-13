class Room < ActiveRecord::Base
  attr_accessible :maximum_occupancy, :minimum_occupancy, :name, :url

  belongs_to :draft
end
