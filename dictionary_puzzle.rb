foods = ["apple", "banana", "carrot", "date", "eggs", "fries", "goat's cheese", "haloumi", "ice", "jalepenos", "kale", "lemon", "mango", "nuclear weapons", "oranges", "peppers", "quinnoa", "raspberries", "steak", "tacos", "unicorn meat", "velvet", "water"]
animals = ["ape", "bat", "cat", "dog", "elephant", "girraffe", "hyena"]

def substrings(str, dictionary)
    # Implement a method #substrings that takes a word as the first argument
    # and then an array of valid substrings (your dictionary) as the second argument.
    # It should return a hash listing each substring (case insensitive)
    # that was found in the original string and how many times it was found.
    # Next, make sure your method can handle multiple words:
    array = str.downcase.split(" ")
    hash = Hash.new

        # Check if the word is in the dictionary, remove if not
    array.each do |word|
        if dictionary.include?(word) != true
            array.delete(word)
        end
    end

        # Check if the hash already contains this word
        # If true, add 1 to counter
        # If not, add word and set counter to 1
    array.each do | word | 
        if hash.key?(word) == true
            hash[word] += 1
        else
            hash[word] = 1
        end
    end
    puts hash
end

substrings("apple banana carrot carrot carrot animal", foods)
substrings("apple banana banana carrot carrot carrot dog dog dog dog DOG dOg DoG dOG", animals)