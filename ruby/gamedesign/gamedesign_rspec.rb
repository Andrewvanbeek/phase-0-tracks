require_relative 'gamedesignfinal'

describe Game do
  let(:games) { Game.new("hey") }

  # it "stores the list items given on initialization" do
  #   expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  # end

  it "check for the letter" do
    expect(games.singleletterguess("h")).to eq ["h", "_", "_"]
  end

  it "check if the firstphrase equals the secondphrase" do
    expect(games.guess("hey")).to eq true
  end

 
end