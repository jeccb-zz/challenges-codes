#TODO's
#organizar o codigo
#criar testes
#atualizar o readme

#INICIALIZADORES
#>> PEGAR O INPUT
puts "Put a input"
input = gets.chomp

#>>PARSER LETRAS E NÚMEROS
TWO = {"A"=> "2", "B"=> "22", "C" => "222" }
THREE = {"D"=> "3", "E"=> "33", "F" => "333" }
FOUR = {"G"=> "4", "H"=> "44", "I" => "444" }
FIVE = {"J"=> "5", "K"=> "55", "L" => "555" }
SIX = {"M"=> "6", "N"=> "66", "O" => "666" }
SEVEN = {"P"=> "7", "Q"=> "77", "R" => "777", "S" => "7777" }
EIGHT = {"T"=> "8", "U"=> "88", "V" => "888" }
NINE = {"W"=> "9", "X"=> "99", "Y" => "999", "Z" => "9999" }

digits = [TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE]

#>> VARIAIVEIS UTILIZADOS NA LOGICA
limit_of_chars = 255
output = ''
last_digit = ''

#INICIALIZADORES

#LOGICA
#>> VALIDACAO DE TAMANHO
if input.size <= limit_of_chars
  input.upcase.chars.map{ |char|
    #>> VALIDACAO SE FOR STRING VAZIA RETORNAR 0 E ZERO
    output << "0" && last_digit = '' if char.strip.empty?
    digits.map{ |digit|
      #>> SE O CARACTER EXISTE NO CONJUNTO DE CARACTERES ATUAIS INCREMENTA NO OUTPUT
      if digit.has_key?(char.upcase)
        #>> SE O ÚLTIMO DIGITO FOR IGUAL AO DIGITO ATUAL ENTÃO ACRESCENTA _
        if last_digit === digit[char.upcase][0,1]
          output << "_#{digit[char.upcase]}"
        else
          output << digit[char.upcase]
        end
        last_digit = digit[char.upcase][0,1]
      end
       }
  }
else
  output = "Input deve ser menor ou igual a #{limit_of_chars}"
end

puts output
