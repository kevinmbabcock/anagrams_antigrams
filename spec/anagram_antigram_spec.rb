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

  it("return true if same letters but not same capitalization") do
    new_word = Words.new("DOg", "GoD")
    expect(new_word.is_anagram?).to(eq(true))
  end

  it("return not a palindrome if word is not an anagram") do
    new_word = Words.new("dog", "puppy")
    expect(new_word.is_palindrome?).to(eq(false))
  end

end
