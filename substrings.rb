dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def count_em(str, substr)
  str.scan(substr).count
end

def substrings(phrase, dictionary)
  processed_phrase = phrase.split.map {|item| item.tr(',.?!\'', '')}.join(' ').downcase
  included_substrings =  dictionary.select {|substring| processed_phrase.include?(substring)}
  included_substrings.reduce(Hash.new(0)) do |obj, item|
    obj[item] = count_em(processed_phrase, item)
    obj
  end
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
p substrings("below", dictionary)
