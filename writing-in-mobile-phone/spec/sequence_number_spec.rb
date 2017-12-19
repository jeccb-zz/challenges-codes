require 'spec_helper'
require_relative '../sequence_number'
require_relative '../digit_enum'

describe SequenceNumber do
  context "convert" do
    it "ensure return a correct digits" do
      sequence_number = SequenceNumber.new('alo')

      digits = sequence_number.convert

      expect(digits).to eq "2555666"
    end

    it "ensure return a incorrect digits" do
      sequence_number = SequenceNumber.new('alo')

      digits = sequence_number.convert

      expect(digits).to_not eq "1"
    end

    it "ensure return a digits of example" do
      sequence_number = SequenceNumber.new('SEMPRE ACESSO O DOJOPUZZLES')

      digits = sequence_number.convert

      expect(digits).to eq "77773367_7773302_222337777_777766606660366656667889999_9999555337777"
    end
  end
end
