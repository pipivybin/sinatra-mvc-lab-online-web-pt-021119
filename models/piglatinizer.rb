class PigLatinizer

  def initialize(text)
    @text = text
  end

  def piglatinize
    arr = @text.split(" ")
    arr.collect do |word|
      output = []
      word_arr = word.split("")
    first_letter = word_arr.first
    arr_new = word_arr.shift << first_letter
    output << arr_new.join
    end
    output.join(" ")
  end

end
