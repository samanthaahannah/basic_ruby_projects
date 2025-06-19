dictionary = ["below", "low", "go", "going", "i", "it", "how", "howdy", "you", "are", "do", "doing", "down", "fro", "from"]

def substrings(string, dictionary)
  mod_str = string.downcase.gsub(/\d+/,"").gsub(/[^\w\s]/,"")
  words = mod_str.split
  selected_words = []

  dictionary.each do |substring|
    words.select{|word| 
    if word.include?(substring) then 
      selected_words.push(substring) 
    end}
  end

   print selected_words.group_by{|substring| substring}.map{|substring,occurance| [substring,occurance.count]}.to_h
end
substrings("Howdy from down below how do you do?", dictionary)