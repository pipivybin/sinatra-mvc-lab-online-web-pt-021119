class PigLatinizer

  def consonant?(letter)
    !letter.match(/[aAeEiIoOuU]/)
  end

  end

  def piglatinize(text)
    arr = text.split(" ")
    output = []
    arr.collect do |word|
      word_arr = word.split("")
    first_letter = word_arr[0]
    second_letter = word_arr[1]
    third_letter = word_arr[2]
    if consonant?(first_letter)
      phrase = word_arr.join("") + "way"
    elsif (second_letter || third_letter) != "a" && (second_letter || third_letter) != "e" && (second_letter || third_letter) != "i" && (second_letter || third_letter) != "o" && (second_letter || third_letter) != "u"
      word_arr.shift
      word_arr.shift
      word_arr.shift
      phrase = word_arr.join("") + first_letter + second_letter + "ay"
    elsif second_letter  != "a" && second_letter != "e" && second_letter != "i" && second_letter != "o" && second_letter != "u"
      word_arr.shift
      word_arr.shift
      phrase = word_arr.join("") + first_letter + second_letter + third_letter + "ay"
    else word_arr.shift
      phrase = word_arr.join("") + first_letter + "ay"
    end
    output << phrase
  end
  output.join(" ")
  end

end
