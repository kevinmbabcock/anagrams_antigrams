require('pry')
require('rspec')
require('anagram_antigram')

describe('anagram_antigram') do

  it("return false for words of different lengths") do
    new_word = Words.new("dog", "puppy")
    expect(new_word.is_anagram?).to(eq("These words cannot be anagrams since they are different lengths"))
  end

  it("return true for words that contain all the same letters") do
    new_word = Words.new("dog", "god")
    expect(new_word.is_anagram?).to(eq("These words are anagrams"))
  end

  it("return false for words of same length but different characters") do
    new_word = Words.new("dog", "cat")
    expect(new_word.is_anagram?).to(eq("These words are not anagrams"))
  end

  it("return true if same letters but not same capitalization") do
    new_word = Words.new("DOg", "GoD")
    expect(new_word.is_anagram?).to(eq("These words are anagrams"))
  end

  it("return not a palindrome if word is not an anagram") do
    new_word = Words.new("dog", "puppy")
    expect(new_word.is_palindrome?).to(eq("These words cannot be palindromes since they are not anagrams"))
  end

  it("return false if word is anagram but not palindrome") do
    new_word = Words.new("dog", "god")
    expect(new_word.is_palindrome?).to(eq("These words are anagrams, but not palindromes"))
  end

  it("return true if word is both anagram and palindrome") do
    new_word = Words.new("racecar", "racecar")
    expect(new_word.is_palindrome?).to(eq("Yes! These words are palindromes"))
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
    expect(new_word.is_antigram?).to(eq("These words are antigrams"))
  end

  it("return false if words are contain at least one similar character") do
    new_word = Words.new("air", "and")
    expect(new_word.is_antigram?).to(eq("These words are not antigrams"))
  end

  it("return true if words contain the same letters") do
    new_word = Words.new("Kevin.,..--  __  Sam", "samKevin")
    expect(new_word.is_anagram?).to(eq("These words are anagrams"))
  end
end
