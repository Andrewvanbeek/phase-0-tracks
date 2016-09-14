require_relative 'gdesignfinal'

describe Game do
  let(:games) { Game.new("hello") }

  # it "stores the list items given on initialization" do
  #   expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  # end

  it "for used letters" do
    expect(games.usedlettersmethod("l")).to eq ["_", "_", "l", "l", "_"]
  end


 
end