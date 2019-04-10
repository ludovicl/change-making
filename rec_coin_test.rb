require_relative 'rec_coin'

RSpec.describe "RecCoin" do
  it "expect raising error when bad arguement is passes" do
    expect { rec_coin("toto", []) }.to raise_error(ArgumentError)
    expect { rec_coin(1, {}) }.to raise_error(ArgumentError)
  end

  it "should return 1 as expected_number" do
    expect(rec_coin(10,  [1,5,10])).to eq(1)
  end

  it "should return 1 as expected_number" do
    expect(rec_coin(17, [1, 2, 5])).to eq(4)
  end

  it "should return 1 as expected_number" do
    expect(rec_coin(23, [1, 2, 5])).to eq(6)
  end

  it "should return 1 as expected_number" do
    expect { rec_coin(11, [10, 3]) }.to raise_error("Not enough coin")
  end
end