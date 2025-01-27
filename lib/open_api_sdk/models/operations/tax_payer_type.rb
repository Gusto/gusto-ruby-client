# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # TaxPayerType - What type of tax entity the company is
    class TaxPayerType < T::Enum
      enums do
        C_CORPORATION = new('C-Corporation')
        S_CORPORATION = new('S-Corporation')
        SOLE_PROPRIETOR = new('Sole proprietor')
        LLC = new('LLC')
        LLP = new('LLP')
        LIMITED_PARTNERSHIP = new('Limited partnership')
        CO_OWNERSHIP = new('Co-ownership')
        ASSOCIATION = new('Association')
        TRUSTEESHIP = new('Trusteeship')
        GENERAL_PARTNERSHIP = new('General partnership')
        JOINT_VENTURE = new('Joint venture')
        NON_PROFIT = new('Non-Profit')
      end
    end
  end
end
