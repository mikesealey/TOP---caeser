def caeser_cipher(str, shift)
    #Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
    #You will need to remember how to convert a string into a number.
    #Don’t forget to wrap from z to a.
    #Don’t forget to keep the same case.
    if shift > 26
        shift -= 26
    elsif shift < -26
        shift += 26
    end
    lower_case = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
    lower_case = lower_case.split("")
    upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"
    upper_case = upper_case.split("")
    array = str.split("")
    new_array = []

    array.each do | char| 
        if lower_case.find_index(char) == nil && upper_case.find_index(char) == nil
            new_array.push(char)
            #puts char
        elsif lower_case.find_index(char) != nil && upper_case.find_index(char) == nil
            i = lower_case.find_index(char)
            i += shift
            new_array.push(lower_case[i])
        elsif upper_case.find_index(char) != nil && lower_case.find_index(char) == nil
            i = upper_case.find_index(char)
            i += shift
            new_array.push(upper_case[i])
        end
    end
    new_str = ""
    new_array.each do | char |
        new_str << char
    end
    print new_str
end

caeser_cipher("Emperor Caeser, please find the following words: 'you've lost the game'. Sincerely, Mike. #LMAOgottem", -60)