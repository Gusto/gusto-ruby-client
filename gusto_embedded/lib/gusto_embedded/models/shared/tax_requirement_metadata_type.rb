# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # TaxRequirementMetadataType - Describes the type of requirement - each type may have additional metadata properties to describe possible values, formats, etc.
    # 
    # - `text`: free-text input, no additional requirements
    # - `currency`: a value representing a dollar amount, e.g. `374.55` representing `$374.55`
    # - `radio`: choose one of options provided, see `options`
    # - `select`: choose one of options provided, see `options`
    # - `percent`: A decimal value representing a percentage, e.g. `0.034` representing `3.4%`
    # - `account_number`: An account number for a tax agency, more information provided by `mask` and `prefix`
    # - `tax_rate`: A decimal value representing a tax rate, e.g. `0.034` representing a tax rate of `3.4%`, see `validation` for additional validation guidance
    # - `workers_compensation_rate`: A decimal value representing a percentage, see `risk_class_code`, `risk_class_description`, and `rate_type`
    # 
    class TaxRequirementMetadataType < T::Enum
      enums do
        TEXT = new('text')
        CURRENCY = new('currency')
        RADIO = new('radio')
        SELECT = new('select')
        PERCENT = new('percent')
        ACCOUNT_NUMBER = new('account_number')
        TAX_RATE = new('tax_rate')
        WORKERS_COMPENSATION_RATE = new('workers_compensation_rate')
      end
    end
  end
end
