class Score < ApplicationRecord
  belongs_to :user
  belongs_to :quiz

  def answer(question_id, answer_id, correct)
    tmp = JSON.parse self.decisions || "{}"
    tmp[question_id]= [answer_id, correct]
    self.decisions = tmp.to_json
  end

  def get_selected_answer(question_id)
    #self.decisions.split("],").each
  end

  def show_icon
  end
end
