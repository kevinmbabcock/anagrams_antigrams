require('pry')
require('rspec')
require('anagram_antigram')

describe('anagram_antigram') do

  it("retrun false for words of different lengths") do
    new_word = Words.new("dog", "puppy")
    expect(new_word.is_anagram?).to(eq(false))
  end

  it("return true for words that contain all the same letters") do
    new_word = Words.new("dog", "god")
    expect(new_word.is_anagram?).to(eq(true))
  end

end
