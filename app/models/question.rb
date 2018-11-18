class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers, dependent: :delete_all
  accepts_nested_attributes_for :answers, reject_if: lambda {|attributes| attributes['text'].empty?}

  # Could also go in initializers
  def self.max_answers
    4
  end
end
