dictionary = ["below","down","go","going","horn","how","howdy","it",
  "i","low","own","part","partner","sit"]

input_string = "below"




def create_substring_hash initial_string, initial_array
  initial_string_array = initial_string.split(" ")
  final_hash = Hash.new

  initial_string_array.each do |string|
    substring_counter = 0
    while substring_counter < string.length
      substring_counter += 1
      substring = string[0, substring_counter]
      
      p substring

      if initial_array.include?(substring)
        if final_hash.has_key?(substring)
          final_hash[substring] += 1
        else
          final_hash[substring] = 1
        end
      end
    end
  end
  final_hash
end

p create_substring_hash("below", dictionary)

#Lost on how to match all parts of each individual string to dictionary items