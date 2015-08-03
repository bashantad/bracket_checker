require './lib/bracket/validator'

module Bracket
  RSpec.describe Validator do
    include Validator

    describe "#is_properly_closed?" do

      context "When odd number of brackets are passed" do

        it "returns false" do
          input_string = "[ 4 * (2 + 3) "
          expect(is_properly_closed?(input_string)).to be_falsy
        end

      end

      context "When closing brackets are altered" do

        it "returns false" do
          input_string = "[ (2 + 3 * 4 ])"
          expect(is_properly_closed?(input_string)).to be false
        end

      end

      context "When closing brackets are passed first" do

        it "returns false" do
          input_string = "]) 2+45 [("
          expect(is_properly_closed?(input_string)).to be_falsy
        end

      end

      context "When only opening brackets are passed" do

        it "returns false" do
          input_string = "[{(2+4)"
          expect(is_properly_closed?(input_string)).to be_falsy
        end

      end


      context "When valid input are passed" do

        ["(9+10)", "([y - 5] * {x+(5-3*2)} + )"].each do |input_string|

          it "with input_string: #{input_string}, it returns true" do
            expect(is_properly_closed?(input_string)).to be_truthy
          end

        end

      end

    end

  end

end

