class Score < ApplicationRecord
  belongs_to :user
  belongs_to :quiz

  def answer(question_id, answer_id, correct)
    self.decisions ||= ""
    self.decisions += "[#{question_id},#{answer_id},#{correct}],"
  end
end
