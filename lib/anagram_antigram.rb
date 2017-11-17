class Words
  def initialize(word1, word2)
    @word1 = word1.downcase!()
    @word2 = word2.downcase!()
    @word1_letters = word1.split(//)
    @word2_letters = word2.split(//)
    @all_letters = [@word1_letters, @word2_letters]
  end

  def is_anagram? ()
    #remove whitespace and puncuation from letter array
    @all_letters.each do |letter|
      letter.delete_if do |remove_letter|
        remove_letter == " " || remove_letter == "," || remove_letter == "." || remove_letter == "-" || remove_letter == "_"
      end
    end
    #print error message if word contains any numbers
    not_letters = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
    not_letters.each do |letter|
      if (@word1_letters.include?(letter) || @word2_letters.include?(letter))
        return "You need to input actual words!"
      end
    end
    #check to see if each letter matches
    if (@word1_letters.length == @word2_letters.length)
      @word1_letters.each do |letter|
        if (@word2_letters.include?(letter))
          #do nothing
        else
          return "These words are not anagrams"
        end
      end
      return "These words are anagrams"
    else
      return "These words cannot be anagrams since they are different lengths"
    end
  end

  #if words are angrams, check if they are also palindromes
  def is_palindrome? ()
    if (self.is_anagram? == "These words are anagrams")
      word1_reverse = []
      @word1_letters.each do |letter|
        word1_reverse.unshift(letter)
      end
      word2_reverse = []
      @word2_letters.each do |letter|
        word2_reverse.unshift(letter)
      end
      if (word1_reverse == @word1_letters && word2_reverse == @word2_letters)
        return "Yes! These words are palindromes"
      else
        return "These words are anagrams, but not palindromes"
      end
    else
      return "These words cannot be palindromes since they are not anagrams"
    end
  end

  #if words are not anagrams, check if they are antigrams
  def is_antigram? ()
    if (self.is_anagram? == "These words are not anagrams")
      @word1_letters.each do |letter|
        if (@word2_letters.include?(letter))
          return "These words are not antigrams"
        end
      end
      return "These words are antigrams"
    else
      return "This word can't be an antigram since it is an anagram"
    end
  end


end
