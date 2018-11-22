class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :quiz, foreign_key: true
      t.boolean :complete
      t.string :decisions

      t.timestamps
    end
  end
end
