class SequenceNumber

  def initialize(message)
    @message = message
  end

  LIMIT_OF_CHARS = 255

  def convert
    return "Input deve ser menor ou igual a #{LIMIT_OF_CHARS}" if @message.size >= LIMIT_OF_CHARS
    output = ""

    @message.upcase.chars.each do |char|
      if char.strip.empty?
        output << "0"
        next;
      end

      DigitEnum::DIGITS.each do |digit|
        if digit.has_key?(char.upcase)
          if output.chars.last === digit[char.upcase][0,1]
            output << "_#{digit[char.upcase]}"
            next;
          end

          output << digit[char.upcase]
        end
      end
    end
    return output
  end
end
