class DigitParser

  attr_accessor :digits

  TWO = {"A"=> "2", "B"=> "22", "C" => "222" }
  THREE = {"D"=> "3", "E"=> "33", "F" => "333" }
  FOUR = {"G"=> "4", "H"=> "44", "I" => "444" }
  FIVE = {"J"=> "5", "K"=> "55", "L" => "555" }
  SIX = {"M"=> "6", "N"=> "66", "O" => "666" }
  SEVEN = {"P"=> "7", "Q"=> "77", "R" => "777", "S" => "7777" }
  EIGHT = {"T"=> "8", "U"=> "88", "V" => "888" }
  NINE = {"W"=> "9", "X"=> "99", "Y" => "999", "Z" => "9999" }

  def digits
    [TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE]
  end
end
