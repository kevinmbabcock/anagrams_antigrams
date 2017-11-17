class Words
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    @word1_letters = word1.split(//)
    @word2_letters = word2.split(//)
  end

  def is_anagram? ()
    if (@word1_letters.length == @word2_letters.length)
      return true
    else
      return false
    end
  end
end
