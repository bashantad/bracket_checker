require_relative './bracket/validator'

# class to check bracket
class BracketCheck
  include Bracket::Validator

  def check(input_string)
    is_properly_closed?(input_string) ? "GOOD" : "BAD"
  end

end