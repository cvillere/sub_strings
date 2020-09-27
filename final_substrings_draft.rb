dictionary = ["below","down","go","going","horn","how","howdy","it",
  "i","low","own","part","partner","sit"]

input_string = "below"




def create_substring_hash initial_string, initial_array
  final_hash = Hash.new
  initial_array.each do |item|
    item_count_array = initial_string.downcase.scan(/#{item}/)
      if item_count_array.count != 0
        final_hash[item] = item_count_array.count
      end
  end
  final_hash
end


p create_substring_hash("Howdy partner, sit down! How's it going?", dictionary)

