def modify_string(string, shift_factor)
  words = string.split(/\s+/)
  split_words = words.map{|word| word.chars.map{|char| char.ord}}
  
  refactored_chars = split_words.map{|word| word.map do|char| 
    if char.between?(96, 123) then
      if char + shift_factor > 122 then
        (char + shift_factor) - 26
      else
        char + shift_factor
      end
    elsif char.between?(64, 91) then
      if char + shift_factor > 90 then
        (char + shift_factor) - 26
      else
        char + shift_factor
      end
    else
      char
    end
  end}

  joined_chars = refactored_chars.map{|word| word.map{|char| char.chr}.join}
  joined_words = joined_chars.join(' ')

  print joined_words
end

modify_string("What a string!", 5)