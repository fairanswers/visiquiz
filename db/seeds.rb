User.create!([
  {email: "joe@fairanswers.com", encrypted_password: "$2a$11$SXepz9I7cKGzdRDuhOlV4eJF1nIm7rLuUuJP9PYtyRQpvXZZ82dUS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: nil},
  {email: "u1@d.com", encrypted_password: "$2a$11$XGz4czozSYpvCx5QUF7ZC.ITfwUxaMIv/16XUoSVr40XTmAtye/Iu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: nil}
])
Quiz.create!([
  {name: "First Quiz", user_id: 1}
])
