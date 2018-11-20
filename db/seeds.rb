User.create!([
  {email: "joe@fairanswers.com", encrypted_password: "$2a$11$SXepz9I7cKGzdRDuhOlV4eJF1nIm7rLuUuJP9PYtyRQpvXZZ82dUS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: nil},
  {email: "u1@d.com", encrypted_password: "$2a$11$XGz4czozSYpvCx5QUF7ZC.ITfwUxaMIv/16XUoSVr40XTmAtye/Iu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: nil}
])
Answer.create!([
  {text: "1", correct: true, question_id: 13},
  {text: "2", correct: false, question_id: 13},
  {text: "1", correct: true, question_id: 14},
  {text: "2", correct: true, question_id: 14},
  {text: "a2.1", correct: true, question_id: 15},
  {text: "b2.1", correct: false, question_id: 15},
  {text: "Babylon 5", correct: true, question_id: 16},
  {text: "Deep Space 9", correct: false, question_id: 16}
])
Question.create!([
  {text: "1", url: "333", quiz_id: 1},
  {text: "q2", url: "", quiz_id: 1},
  {text: "q2.1", url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Anthonis_van_Dyck_-_Equestrian_Portrait_of_Charles_I_-_National_Gallery%2C_London.jpg/800px-Anthonis_van_Dyck_-_Equestrian_Portrait_of_Charles_I_-_National_Gallery%2C_London.jpg", quiz_id: 2},
  {text: "What ship is this?", url: "https://wallpapercave.com/wp/tQqjhiZ.jpg", quiz_id: 2}
])
Quiz.create!([
  {name: "First Quiz", user_id: 1},
  {name: "Quiz 2", user_id: 1}
])
