dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  substrings_in_input = {}
  input_string_array = string.downcase.split(' ').to_a
  dictionary.each do |substring|
    input_string_array.each do |word|
      if word.include?(substring)
        if substrings_in_input.key?(substring)
          substrings_in_input[substring] = substrings_in_input[substring] + 1
        else substrings_in_input[substring] = 1
        end
      end
    end
  end
  puts substrings_in_input
end

substrings('Go down to the partners below, and tell them to sit.', dictionary)
