def substrings(string, dictionary)
  string = string.downcase
  dictionary.reduce(Hash.new(0)) { |result, word| result[word] += 1 if string.include?(word); result }
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
