class Words
  def initialize(word1, word2)
    @word1 = word1.downcase!()
    @word2 = word2.downcase!()
    @word1_letters = word1.split(//)
    @word2_letters = word2.split(//)
    @all_letters = [@word1_letters, @word2_letters]
  end

  def is_anagram? ()
    @all_letters.each do |letter|
      letter.delete_if do |remove_letter|
        remove_letter == " " || remove_letter == "," || remove_letter == "." || remove_letter == "-" || remove_letter == "_"
      end
    end
    not_letters = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
    not_letters.each do |letter|
      if (@word1_letters.include?(letter) || @word2_letters.include?(letter))
        return "You need to input actual words!"
      end
    end
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

  def is_palindrome? ()
    if (self.is_anagram? == true)
      word1_reverse = []
      @word1_letters.each do |letter|
        word1_reverse.unshift(letter)
      end
      word2_reverse = []
      @word2_letters.each do |letter|
        word2_reverse.unshift(letter)
      end
      if (word1_reverse == @word1_letters && word2_reverse == @word2_letters)
        return true
      else
        return false
      end
    else
      return false
    end
  end

  def is_antigram? ()
    if (self.is_anagram? == false)
      @word1_letters.each do |letter|
        if (@word2_letters.include?(letter))
          return false
        end
      end
      return true
    else
      return "This word can't be an antigram since it is an anagram"
    end
  end


end
