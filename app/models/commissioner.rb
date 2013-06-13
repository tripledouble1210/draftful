class Commissioner < ActiveRecord::Base
  attr_accessible :current_pick, :pick_time_limit, :start_time

  belongs_to :draft
  has_one :selection
end
