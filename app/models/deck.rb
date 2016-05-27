class Deck < ActiveRecord::Base
  has_many :cards
  has_many :rounds

  validates :name, {presence: true, length: {maximum: 65}}
end
