class Score < ApplicationRecord
  belongs_to :user
  belongs_to :quiz

  def answer(question_id, answer_id, correct)
    tmp = JSON.parse self.decisions || "{}"
    tmp[question_id.to_s]= [answer_id.to_s, correct]
    self.decisions = tmp.to_json
  end

  def is_selected(question_id, answer_id)
    tjson = JSON.parse self.decisions || "{}"
    if not tjson[question_id.to_s]
      return false
    end
    selected = tjson[question_id.to_s][0]
    if selected
      if selected == answer_id.to_s
        return true
      end
    end
    return false
  end

  def show_icon
  end
end
