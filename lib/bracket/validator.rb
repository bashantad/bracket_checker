# Mixin for Bracket Validator
module Bracket

  module Validator

    BRACKET_PAIR = {
      "]" => "[",
      "}" => "{",
      ")" => "("
    }

    def is_properly_closed?(input_string)
      regex        = Regexp.union(BRACKET_PAIR.to_a.flatten)
      all_brackets = input_string.scan(regex)

      return false unless all_brackets.size % 2 == 0 # return false if no of brackets is odd

      stack = []
      all_brackets.each do |current_char|

        stack << current_char if BRACKET_PAIR.values.include?(current_char) # keep it in stack if it's left bracket

        if BRACKET_PAIR.keys.include?(current_char)
          return false if stack.empty? # return false if right bracket exists without left.
          previous_char = stack.pop
          return false unless previous_char == BRACKET_PAIR[current_char]
        end

      end

      return stack.empty?
    end

  end


end