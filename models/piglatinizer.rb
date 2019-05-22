class PigLatinizer

  def initialize(text)
    @text = text
  end

  def piglatinize
    @text.split("").first
  end

end
