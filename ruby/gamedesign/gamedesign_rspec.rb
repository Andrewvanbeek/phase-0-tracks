require_relative 'gamedesignfinal'

describe Game do
  let(:games) { Game.new("hello") }

  # it "stores the list items given on initialization" do
  #   expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  # end

  it "check for the letter" do
    expect(games.singleletterguess("h")).to eq ["h", "_", "_", "_", "_"]
  end

   it "check for the letter" do
    expect(games.singleletterguess("x")).to eq ["_", "_", "_", "_", "_"]
  end

  it "check if the firstphrase equals the secondphrase" do
    expect(games.guess("hello")).to eq true
  end

   it "check if the usedarray gets populated with a letter when used." do
    expect(games.santavar("h")).to eq ["h"]
  end

  it "check if the usedarray gets populated with a letter when used." do
    expect(games.santavar("c")).to eq ["c"]
  end

 
end