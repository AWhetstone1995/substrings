require 'pry-byebug'

def substrings(word, dictionary)
    result = Hash.new(0)
    word = word.downcase

    dictionary.each do |text|
        match = word.scan(text).length
        result[text] = match unless match == 0
    end

    return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)