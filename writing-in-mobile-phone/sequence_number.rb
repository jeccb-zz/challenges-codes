class SequenceNumber

  def initialize(message)
    @message = message
  end

  LIMIT_OF_CHARS = 255

  def process
    return "Input deve ser menor ou igual a #{LIMIT_OF_CHARS}" if @message.size >= LIMIT_OF_CHARS
    parser = DigitParser.new
    output, last_digit = ""
    @message.upcase.chars.map{ |char|
      output << "0" && last_digit = '' if char.strip.empty?
      parser.digits.map{ |digit|
        if digit.has_key?(char.upcase)
          if last_digit === digit[char.upcase][0,1]
            output << "_#{digit[char.upcase]}"
          else
            output << digit[char.upcase]
          end
          last_digit = digit[char.upcase][0,1]
        end
         }
    }
    return output
  end
end
