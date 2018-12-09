User.create!([
  {email: "user1@example.com", password: "111111", password_confirmation: "111111", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: nil},
])
Quiz.create!([
  {name: "Two Question Quiz", user_id: 1}
])
Question.create!([
  {text: "Can you see a horse in this picture?", url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Anthonis_van_Dyck_-_Equestrian_Portrait_of_Charles_I_-_National_Gallery%2C_London.jpg/800px-Anthonis_van_Dyck_-_Equestrian_Portrait_of_Charles_I_-_National_Gallery%2C_London.jpg", quiz_id: 1},
  {text: "What ship is this?", url: "https://wallpapercave.com/wp/tQqjhiZ.jpg", quiz_id: 1}
])
Answer.create!([
  {text: "Yes", correct: true, question_id: 1},
  {text: "No", correct: false, question_id: 1},
  {text: "Deep Space 9", correct: false, question_id: 2},
  {text: "Babylon 5", correct: true, question_id: 2},
])
Score.create!([
  {user_id: 1, quiz_id: 1, complete: nil, decisions: "{\"15\":[\"24\",false],\"16\":[\"26\",false]}"}
])
