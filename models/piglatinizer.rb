class PigLatinizer

  def initialize(text)
    @text = text
  end

  def piglatinize
    arr = @text.split(" ")
    arr.collect do |word|
      word_arr = word.split("")
    first_letter = word_arr.first
    arr_new = arr.shift << first_letter
    arr_new.join
    end
  end

end
