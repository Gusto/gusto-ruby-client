# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # ContractorPaymentMethodSplitBy - Describes how the payment will be split. If split_by is Percentage, then the split amounts must add up to exactly 100. If split_by is Amount, then the last split amount must be nil to capture the remainder.
    class ContractorPaymentMethodSplitBy < T::Enum
      enums do
        AMOUNT = new('Amount')
        PERCENTAGE = new('Percentage')
      end
    end
  end
end
