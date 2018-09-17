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
    sentences_array = self.split('.'||'?'||'!')
    sentence_count = 0
    sentences_array.each do |one_sentence|
      if one_sentence.sentence? || one_sentence.question? || one_sentence.exclamation?
        sentence_count += 1
      end
    end
    sentence_count
  end
end