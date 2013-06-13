class Draft < ActiveRecord::Base
  attr_accessible :is_private, :is_snake, :password_digest
end
