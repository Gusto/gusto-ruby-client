# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # PayrollWithholdingPayPeriodType - The payment schedule tax rate the payroll is based on. Only included for off-cycle payrolls.
    class PayrollWithholdingPayPeriodType < T::Enum
      enums do
        EVERY_WEEK = new('Every week')
        EVERY_OTHER_WEEK = new('Every other week')
        TWICE_PER_MONTH = new('Twice per month')
        MONTHLY = new('Monthly')
        QUARTERLY = new('Quarterly')
        SEMIANNUALLY = new('Semiannually')
        ANNUALLY = new('Annually')
      end
    end
  end
end
