class Guess < ActiveRecord::Base
  belongs_to :card
  belongs_to :round
  belongs_to :user

  validates :user_input, presence: true

  def check_if_correct
    if self.user_input.downcase == self.card.answer.downcase
      self.update_attributes(correct: true)
    else
      self.correct
    end
  end

end
