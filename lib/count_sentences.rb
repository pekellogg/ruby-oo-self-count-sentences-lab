require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = self.split
    # binding.pry
    count = 0
    array.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        count += 1
      end
    end
    count
    # binding.pry
  end

end

# complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
# String.new(complex_string)
# complex_string.count_sentences #=> 4