class PigLatinizer

  def initialize(text)
    @text = text
  end

  def piglatinize
    arr = @text.split("")
    first_letter = arr.first
    arr_new = arr.shift << first_letter
    arr_new.join
    binding.pry
  end

end
