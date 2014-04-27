class Critique < ActiveRecord::Base
  before_save :tokenize_html

  def tokenize_html
    h = PertinentParser::html(self[:body])
    sentences = Tokenizer::tokenizer.tokenize_text(h)
    sentences.each_with_index do |sentence, i|
      h.wrap_out("<span class='sentence' id='#{i+1}'>", sentence)
    end
    self[:tokenized] = h.apply
  end
end
