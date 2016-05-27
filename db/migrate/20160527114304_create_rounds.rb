class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :user, null: false, foreign_key: true
      t.references :deck, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
