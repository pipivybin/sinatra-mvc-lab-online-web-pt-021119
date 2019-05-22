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
    no_first_letter = word_arr.shift
    no_first_letter << first_letter

    binding.pry
    output << arr_new.join
    end
    output.join(" ")
  end

end
