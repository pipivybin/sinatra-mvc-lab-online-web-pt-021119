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
    word_arr.shift
    word_arr << first_letter

    binding.pry
    output << arr_new.join
    end
    output.join(" ")
  end

end
