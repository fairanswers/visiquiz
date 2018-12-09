require 'rails_helper'

# http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/

RSpec.describe Score, type: :model do
  it " checks for true " do
    expect(1==1).to eq(true)
  end

  it "should find selections" do
    s=Score.new()
    #get one right
    s.answer(1,7,true)
    #get one wrong
    s.answer(2,4,false)
    byebug
    expect(s.is_selected(1,7)).to be true
    expect(s.is_selected(2,4)).to be true
    #Does not exist
    expect(s.is_selected(3,1)).to be false
  end

  # it "should save decisions " do
  #   s=Score.new()
  #   expect(s.decisions).to be nil
  #   s.answer(1,2,true)
  #   expect(s.decisions).not_to be nil
  # end
  #
  # it " should have json decisions " do
  #   s=Score.new()
  #   s.answer(1,2,true)
  #   s.answer(2,3,false)
  #   expect(s.decisions).not_to be nil
  #   j=JSON.parse s.decisions
  #
  #   expect(j).not_to be nil
  #   expect(j[1.to_s]).not_to be nil
  #   expect(j[1.to_s][0]).to be 2
  #   expect(j[1.to_s][1]).to be true
  #   expect(j[2.to_s][1]).to be false
  # end
end
