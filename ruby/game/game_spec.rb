require_relative 'game'

describe Game do
  let(:game) { Game.new("word") }

    it "turns entered word into an array" do
    expect(game.secret_word).to eq ["w", "o", "r", "d"]
    end

  it "sets the number of turns based on the number of letters of the word" do
    expect(game.guesses).to eq 4
  end

  it "creates an array of dashes to represent the secret word" do
    expect(game.word).to eq ["-", "-", "-", "-"] 
  end

  it "expects inputted letters to appear in used_letters array" do
  	game.game_logic("r")
    expect(game.used_letters).to eq ["r"]
  end

end
