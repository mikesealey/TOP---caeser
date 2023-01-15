example_array = [4,3,78,2,0,2]

test_array = []
25.times do test_array.push(rand(100)) # Adjust the .times number carefully - This style of sorting is time-consuming.
end

def bubble_sort(array)
    #Build a method #bubble_sort that takes an array and returns a sorted array.
    # It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
    i = 0
    placeholder = 0
    sequence = 0
    while sequence < array.length
        if array[i] > array[i + 1]
            # If the larger of the two numbers comes first
            # Perform the shuffle
            placeholder = array[i]
            array[i] = array[i + 1]
            array[i + 1] = placeholder
            # and return to the start of the array
            i = 0
            # restart the sequence counter
            sequence = 0
        else
            #but if the larger of the two numbers comes second
            sequence += 1 
            # Shuffle along the array one position
            i += 1
        end
                    # Output things
                    puts "i = #{i}"
                    puts "sequence = #{sequence}"
                    puts array
    end
    return array
end

# puts example_array
# bubble_sort(example_array)

puts test_array
bubble_sort(test_array)