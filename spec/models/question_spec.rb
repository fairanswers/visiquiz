require 'rails_helper'

RSpec.describe Question, type: :model do
  it "should find correct" do
    # These should be fixtures
    # IDs not populated until save
    user=User.new(name: "temporary tester", email: "tmp_tst@example.com", password: "111111", password_confirmation: "111111")
    user.save
    qz=Quiz.new(name: "Testing Quiz", user: user)
    qz.save
    qs=Question.new(text: "Tesing Question", quiz: qz)
    qs.save
    an1=Answer.new(text: "Wrong Answer", question: qs, correct: false)
    an1.save
    an2=Answer.new(text: "Right Answer", question: qs, correct: true)
    an2.save
    expect(qs.correct?(an1)).not_to be true
    expect(qs.correct?(an2)).to be true

    qs2=Question.new(text: "Second Question", quiz: qz)
    qs2.save
    an12=Answer.new(text: "Secone Right Answer", question: qs2, correct: true)
    an12.save
    an22=Answer.new(text: "Second Wrong Answer", question: qs2, correct: false)
    an22.save
    expect(qs2.correct?(an12)).to be true
    expect(qs2.correct?(an22)).not_to be true
  end


end
