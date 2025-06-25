def modify_string(string, shift_factor)
  refactored_chars = string.split(/\s+/).map { |word| word.chars.map(&:ord) }.map do |word|
    word.map do |char|
      get_charaters(char, shift_factor)
    end
  end
  print refactored_chars.map { |word| word.map(&:chr).join }.join(" ")
end

def get_lowercase(char, shift_factor)
  if char + shift_factor > 122
    (char + shift_factor) - 26
  else
    char + shift_factor
  end
end

def get_uppercase(char, shift_factor)
  if char + shift_factor > 90
    (char + shift_factor) - 26
  else
    char + shift_factor
  end
end

def get_charaters(char, shift_factor)
  return get_lowercase(char, shift_factor) if char.between?(96, 123)
  return get_uppercase(char, shift_factor) if char.between?(64, 91)

  char
end

modify_string("What a string!", 5)
