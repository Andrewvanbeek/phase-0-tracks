# our calculator should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'calculator'

describe Calculator do
  let(:calculator) { Calculator.new }

  it "adds two integers" do
    expect(calculator.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
    expect(calculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
    expect(calculator.multiply(2,3)).to eq 6
  end

  it "divides two integers" do
    expect(calculator.divide(4,2)).to eq 2
  end
end

# describe Ruler do
#   let(:ruler) { Ruler.new }

#     it "adds two integers" do
#     expect(ruler.add(3,4)).to eq 7
#   end

#   it "subtracts two integers" do
#     expect(ruler.subtract(7,1)).to eq 6
#   end

#   it "multiplies two integers" do
#     expect(ruler.multiply(2,3)).to eq 6
#   end
# end

# describe Compass do
#    let(:compass) { Compass.new }

#     it "adds two integers" do
#     expect(compass.add(3,4)).to eq 7
#   end

#   it "subtracts two integers" do
#     expect(compass.subtract(7,1)).to eq 6
#   end

#   it "multiplies two integers" do
#     expect(compass.multiply(2,3)).to eq 6
#   end
# end