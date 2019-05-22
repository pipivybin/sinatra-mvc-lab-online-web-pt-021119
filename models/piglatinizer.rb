class PigLatinizer

  def piglatinize(text)
    arr = text.split(" ")
    arr.collect do |word|
      output = []
      word_arr = word.split("")
    first_letter = word_arr[0].downcase
    second_letter = word_arr[1]
    if  ["a", "e", "i", "o", "u"].include?(first_letter)
      phrase = word_arr.join("") + "way".first
    elsif second_letter != "a" && second_letter != "e" && second_letter != "i" && second_letter != "o" && second_letter != "u"
      word_arr.shift
      word_arr.shift
      phrase = word_arr.join("") + first_letter + second_letter + "ay".first
    else word_arr.shift
      phrase = word_arr.join("") + first_letter + "ay"

    end
  end

  end

end
