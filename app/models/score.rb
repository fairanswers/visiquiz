class Score < ApplicationRecord
  belongs_to :user
  belongs_to :quiz

  def answer(question_id, answer_id, correct)
    tmp = JSON.parse self.decisions || "{}"
    tmp[question_id]= [answer_id, correct]
    self.decisions = tmp.to_json
  end

  def is_selected(question_id, answer_id)
    json = JSON.parse self.decisions || "{}"
#    byebug
    selected = json[question_id.to_s]
    if selected
      if selected == answer_id
        return true
      end
    end
    return false
  end

  def show_icon
  end
end
