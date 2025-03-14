# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  
    # PrintingFormat - The type of check stock being printed. Check the "Types of check stock" section in this [link](https://support.gusto.com/article/999877761000000/Pay-your-team-by-check) for more info on check types
    class PrintingFormat < T::Enum
      enums do
        TOP = new('top')
        BOTTOM = new('bottom')
      end
    end
  end
end
