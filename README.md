# Anagram or Antigram?

#### This program will take two words and let the user know if the words are anagrams or antigrams

#### By Kevin Babcock

## Description

This program will look at the contents of two words and decide if they are anagrams, antigrams, palindromes, or neither. It will remove all whitespace and punctuation from the words before evaluating, and print an error message if any of the words contain numbers.

## Setup/Installation Requirements

* go to github.com/kevinmbabcock
* search for anagrams_antigrams in the repositories
* Open Folder and Terminal
* run 'rspec' from the project folder in the Terminal

## Specs

* Result will be false if words contain a different number of characters
  Ex: "dog" & "puppy" => false
* Result will be false if words contain same number of characters but they are different
  Ex: "dog" & "cat" => false
* Result will be true if the same letters are found in each word
  Ex: "dog" & "god" => true
* Will evaluate capital and lower case letters as matches
  Ex: "Evan" & "Neva" => true
* Program will remove all whitespace and punctation before evaluating
  Ex: "Kevin   Sam" & "saM-.,Kevin" => true 
* It will not evaluate words that contain numbers, and return an error message instead

## Known Bugs

None

## Support and contact details

Email: kevinmbabcock@icloud.com

## Technologies Used

Ruby

### License

MIT

Copyright (c) 2017 Kevin Babcock, Epicodus
