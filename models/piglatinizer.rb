class PigLatinizer

  def initialize(text)
    @text = text
  end

  def piglatinize

    arr = @text.split(" ")
    arr.collect do |word|
      output = []
      word_arr = word.split("")
    first_letter = word_arr[0]
    second_letter = word_arr[1]
    if first_letter == a || e || i || o || u
      phrase = word_arr.join("way")
    elsif second_letter != a || e || i || o || u
      phrase = word_arr.shift.shift.join("") + first_letter + second_letter + "ay"
    else phrase = word_arr.shift.join("") + first_letter + "ay"
    end
  end

  end

end
