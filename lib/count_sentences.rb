require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    sentence_count = self.split('.'||'?'||'!')
    sentence_count.delete_if {|w| w.size < 2}.size
  end
end