class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
    t.references :card, null: false, foreign_key: true
    t.references :round, null: false, foreign_key: true
    t.references :user, null: false, foreign_key: true

    t.boolean :correct, default: false
    t.string :user_input, null: false

    t.timestamps null: false
    end
  end
end
