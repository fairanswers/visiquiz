require 'rails_helper'

# http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/

RSpec.describe Score, type: :model do
  it " checks for true " do
    expect(1==1).to eq(true)
  end

  it "should save decisions " do
    s=Score.new()
    expect(s.decisions).to be nil
    s.answer(1,2,true)
    expect(s.decisions).not_to be nil
  end

  it " should have json decisions" do
    s=Score.new()
    s.answer(1,2,true)
    expect(s.decisions).not_to be nil
    j=JSON.parse s.decisions

    expect(j).not_to be nil
    expect(j[1.to_s]).not_to be nil
    expect(j[1.to_s][0]).to be 2
    expect(j[1.to_s][1]).to be true
  end
end
