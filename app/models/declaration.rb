class Declaration < ActiveRecord::Base
  attr_accessible :rank

  belongs_to :draft
  belongs_to :item

end
