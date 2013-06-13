class Draft < ActiveRecord::Base
  has_secure_password
  attr_accessible :is_private, :is_snake, :password, :password_confirmation


  has_one :room
  has_one :commissioner
  has_many :declarations
  has_many :items, through: :declarations, as: :available
  has_many :assignments
  has_many :players, through: :assignments

  def self.private_drafts
	Draft.where("is_private = ?", true)
  end

  def self.public_drafts
	Draft.where("is_private = ?", false)
  end

  def is_private?
	self.is_private
  end

  def is_public?
	!is_private?
  end

  def is_snake?
	self.is_snake
  end

  def is_linear?
	!is_snake?
  end
end
