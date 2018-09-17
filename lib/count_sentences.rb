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
    sentence_count = self.split(/\.|\?|\!/)
    #binding.pry
    sentence_count.delete_if {|sentence| sentence.size < 2}
    sentence_count.legnth
  end
end