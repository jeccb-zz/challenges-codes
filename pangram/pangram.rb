module BookKeeping
  VERSION=6
end

class Pangram
  def self.pangram?(phrase)
    ('a'..'z').to_a.each do |letter|
      return unless phrase.downcase.chars.include?(letter)
    end
  end
end
