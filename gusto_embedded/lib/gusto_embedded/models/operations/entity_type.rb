# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  
    # EntityType - the type of target entity applicable to the flow. This field is optional for company flows, please refer to the flow_types table above for more details.
    class EntityType < T::Enum
      enums do
        COMPANY = new('Company')
        EMPLOYEE = new('Employee')
      end
    end
  end
end
