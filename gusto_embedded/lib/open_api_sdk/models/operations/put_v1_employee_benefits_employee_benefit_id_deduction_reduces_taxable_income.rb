# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # PutV1EmployeeBenefitsEmployeeBenefitIdDeductionReducesTaxableIncome - Whether the employee deduction reduces taxable income or not. Only valid for Group Term Life benefits. Note: when the value is not "unset", coverage amount and coverage salary multiplier are ignored.
    class PutV1EmployeeBenefitsEmployeeBenefitIdDeductionReducesTaxableIncome < T::Enum
      enums do
        UNSET = new('unset')
        REDUCES_TAXABLE_INCOME = new('reduces_taxable_income')
        DOES_NOT_REDUCE_TAXABLE_INCOME = new('does_not_reduce_taxable_income')
      end
    end
  end
end
