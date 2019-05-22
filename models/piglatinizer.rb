class PigLatinizer

  def initialize(text)
    @text = text
  end

  def piglatinize
    arr = @text.split("")
    first_letter = arr.first
    arr.shift

  end

end
