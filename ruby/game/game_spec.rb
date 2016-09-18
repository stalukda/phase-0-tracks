require_relative 'game'

describe Game do
  let(:game) { Game.new }

    it "turns entered word into a lowercase array" do
    expect(game.secret_word("dame")).to eq ["d", "a", "m", "e"]
    end

  it "sets the number of turns based on the number of letters of the word" do
    game.secret_word("dame")
    expect(game.turns).to eq 4
  end
end
