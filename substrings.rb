def substrings(phrase, dictionary)
  included_substrings = dictionary.select {|substring| phrase.downcase.include?(substring)}
  included_substrings.reduce(Hash.new(0)) do |obj, substring|
    obj[substring] = phrase.downcase.scan(substring).count
    obj
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)