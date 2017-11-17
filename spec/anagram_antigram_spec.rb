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

  it("return false if word is anagram but not palindrome") do
    new_word = Words.new("dog", "god")
    expect(new_word.is_palindrome?).to(eq(false))
  end

  it("return true if word is both anagram and palindrome") do
    new_word = Words.new("racecar", "racecar")
    expect(new_word.is_palindrome?).to(eq(true))
  end

  it("return false if either word is not a real word") do
    new_word = Words.new("Kevin", "St3v3")
    expect(new_word.is_anagram?).to(eq("You need to input actual words!"))
  end

  it("return false if word is an anagram") do
    new_word = Words.new("dog", "god")
    expect(new_word.is_antigram?).to(eq("This word can't be an antigram since it is an anagram"))
  end

  it("return true if words are antigrams") do
    new_word = Words.new("dog", "cat")
    expect(new_word.is_antigram?).to(eq(true))
  end
end
