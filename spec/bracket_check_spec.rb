require './lib/bracket_check'

RSpec.describe BracketCheck do

  let(:bracket_check) { BracketCheck.new }

  describe "#check" do

    context "When valid inputs are given" do

      ["([x + 2][x+1])", "(x + 2)"].each do |input_string|

        it "Input : #{input_string}, returns GOOD" do
          expect(bracket_check.check(input_string)).to eq "GOOD"
        end

      end

    end

    context "When invalid inputs are given" do

      ["(x + 1", "([x + 2)]"].each do |input_string|
        it "Input : #{input_string}, it returns BAD" do
          expect(bracket_check.check(input_string)).to eq "BAD"
        end
      end

    end

  end

end

