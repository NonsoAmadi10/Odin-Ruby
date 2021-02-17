# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
def substrings(word, dict)
    result = {}
    if word.to_s
        dict.each do |x|
            result[x] = word.downcase.scan(/(?=#{x})/).count if word.downcase.include? x
        end
    return result
    else
        return "Word must be a string"
    end
end

dict = ["be", "low", "bow", "arch", "cash", "gelmox", "go", "going","horn", "howdy", "it", "i", "own", "part", "sit"]

p substrings("Howdy partner, sit down! How is it going?", dict)