def substrings(word, dictionary)
  frequencies = Hash.new(0)
  dictionary.each do |substring|
    occurrences = word.scan(substring).length
    frequencies[substring] += occurrences if occurrences > 0
  end

  return frequencies
end


word = "below"
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
result = substrings(word, dictionary)
puts result
