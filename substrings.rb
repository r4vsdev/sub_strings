# frozen_string_literal: true

def substrings(phrase, dictionary)
  included_substrings = dictionary.select { |substring| phrase.downcase.include?(substring) }
  included_substrings.each_with_object({}) { |substring, obj| obj[substring] = phrase.downcase.scan(substring).count }
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)

# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1,
# "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
