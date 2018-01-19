module BookKeeping
  VERSION=6
end

class Pangram
  LETTERS = ('a'..'z').to_a

  def self.pangram?(phrase)
    LETTERS.each do |letter|
      return false unless phrase.downcase.chars.include?(letter)
    end
  end
end
