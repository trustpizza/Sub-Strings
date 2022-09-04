dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substring(string, dictionary)
    string = string.downcase
    count = string.split(' ').reduce(Hash.new(0)) do |object, word|
        dictionary.each {|element| object[element] += 1 if word.include?(element)}
        object
    end
    return count
end

# For each word in the dictionary, go through the strings and see if ANY part of the string matches (use #include?)
# If include? is true, uptick the hash 
