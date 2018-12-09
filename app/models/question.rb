class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers, dependent: :delete_all
  accepts_nested_attributes_for :answers, reject_if: lambda {|attributes| attributes['text'].empty?}

  # Could also go in initializers
  def self.max_answers
    4
  end

  def correct?(id)
    #If we pass the object, get the id
    if id.is_a? Answer
      id = id.id
    else
      # convert str to number
      if id.is_a? String
        id = id.to_i
      end
    end
    # For each answer
    answers.each do |ans|
      # if this is the right one
      byebug
      if(ans.id == id)
        # if(ans.correct)
          return true
        # end
        # return false
      end
    end
  return false
  end

end
