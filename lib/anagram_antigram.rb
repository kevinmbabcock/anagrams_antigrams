class Words
  def initialize(word1, word2)
    @word1 = word1.downcase!()
    @word2 = word2.downcase!()
    @word1_letters = word1.split(//)
    @word2_letters = word2.split(//)
  end

  def is_anagram? ()
    if (@word1_letters.length == @word2_letters.length)
      @word1_letters.each do |letter|
        if (@word2_letters.include?(letter))
          #do nothing
        else
          return false
        end
      end
      return true
    else
      return false
    end
  end
end
