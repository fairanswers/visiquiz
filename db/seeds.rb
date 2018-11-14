User.create!([
  {email: "joe@fairanswers.com", encrypted_password: "$2a$11$SXepz9I7cKGzdRDuhOlV4eJF1nIm7rLuUuJP9PYtyRQpvXZZ82dUS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: nil},
  {email: "u1@d.com", encrypted_password: "$2a$11$XGz4czozSYpvCx5QUF7ZC.ITfwUxaMIv/16XUoSVr40XTmAtye/Iu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: nil}
])
Answer.create!([
  {text: "Answer one for q1", correct: nil, question_id: 1},
  {text: "Answer two for q1", correct: nil, question_id: 1},
  {text: "Answer three for q1", correct: nil, question_id: 1},
  {text: "Answer one for q1", correct: nil, question_id: 2},
  {text: "Answer two for q2", correct: nil, question_id: 2}
])
Question.create!([
  {text: "First Question", url: nil, quiz_id: 1},
  {text: "Second Question", url: nil, quiz_id: 1}
])
Quiz.create!([
  {name: "First Quiz", user_id: 1}
])
