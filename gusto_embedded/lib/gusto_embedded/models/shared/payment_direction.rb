# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # PaymentDirection - The direction of the payment
    class PaymentDirection < T::Enum
      enums do
        CREDIT = new('credit')
        DEBIT = new('debit')
      end
    end
  end
end
