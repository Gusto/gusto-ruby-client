# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # PutV1EmployeeBenefitsEmployeeBenefitIdLimitOption - Some benefits require additional information to determine
    # their limit.
    # 
    # `Family` or `Individual`: Applicable to HSA benefit.
    # 
    # `Joint Filing or Single` or `Married and Filing Separately`: Applicable to Dependent Care FSA benefit.
    class PutV1EmployeeBenefitsEmployeeBenefitIdLimitOption < T::Enum
      enums do
        FAMILY = new('Family')
        INDIVIDUAL = new('Individual')
        JOINT_FILING_OR_SINGLE = new('Joint Filing or Single')
        MARRIED_AND_FILING_SEPARATELY = new('Married and Filing Separately')
      end
    end
  end
end
