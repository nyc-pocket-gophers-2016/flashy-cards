class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses

  validates :answer, :question, :deck, {presence: true, length: {maximum: 65}}
end
