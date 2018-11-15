class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :delete_all
end
