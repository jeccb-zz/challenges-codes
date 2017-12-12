require 'spec_helper'

describe SequenceNumber, type: :model do
  context "process" do
    it "ensure return a correct digits"
      sequence_number = SequenceNumber.new('alo')

      digits = sequence_number.process

      expect(digits).to eq 1 
    end
  end
end
