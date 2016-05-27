class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :guesses

  def has_unguessed_cards
    self.guesses.empty?
  end


end
