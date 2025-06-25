dictionary = %w[below low go going i it how howdy you are do doing down fro
                from]

def substrings(string, dictionary)
  mod_str = string.downcase.gsub(/\d+/, "").gsub(/[^\w\s]/, "")
  words = mod_str.split
  selected_words = []

  dictionary.each do |substring|
    words.select do |word|
      selected_words.push(substring) if word.include?(substring)
    end
  end

  print(selected_words.group_by { |substring| substring }.transform_values(&:count))
end
substrings("Howdy from down below how do you do?", dictionary)
