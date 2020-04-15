require 'pry'

class PigLatinizer
  attr_reader :word

  # def initialize(word)
  #   @word = word
  # end

  def piglatinize(word)
    if word.include?(" ")
    split(word)
    else latinize(word).join(" ")
    end
  end

  def latinize(word)
    alpha = ('a'..'z').to_a + ('A'..'Z').to_a
    vowels = %w[a e i o u A E I O U]
    consonants = alpha - vowels
    a = []
    if vowels.include?(word[0].downcase)
      a << word + 'way'
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && vowels.include?(word[2])
        a << word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0]) && vowels.include?(word[1])
        a << word[1..-1] + word[0] + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        a << word[3..-1] + word[0..2] + 'ay'
    elsif
      word.length < 2
        a << word + 'way'
    end
  end

  def split(words)
    a = []
    words.split(" ").each do |word|
     a << latinize(word)
    end
    a.join(" ")
  end


end
