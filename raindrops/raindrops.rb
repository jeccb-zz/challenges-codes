module BookKeeping
  VERSION = 3
end

class Raindrops

  def self.convert(number)
    output = ''
    {3 => 'Pling', 5 =>  'Plang', 7 => 'Plong'}.each do |factor|
      output += factor[1] if number % factor[0] == 0
    end
    output = number.to_s if output.empty?
    output
  end
end
