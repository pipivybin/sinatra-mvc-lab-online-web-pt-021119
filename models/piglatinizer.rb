class PigLatinizer

  def initialize(text)
    @text = text
  end

  def piglatinize

    arr = @text.split(" ")
    arr.collect do |word|
      output = []
      word_arr = word.split("")
    first_letter = word_arr[0].downcase
    second_letter = word_arr[1]
    if  ["a", "e", "i", "o", "u"].include?(first_letter)
      phrase = word_arr.join("") + "way"
    elsif second_letter != "a" && second_letter != "e" && second_letter != "i" && second_letter != "o" && second_letter != "u"
      word_arr.shift
      word_arr.shift
      phrase = word_arr.join("") + first_letter + second_letter + "ay"
    else word_arr.shift
      phrase = word_arr.join("") + first_letter + "ay"
binding.pry
    end
  end

  end

end
