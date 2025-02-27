# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # Stores metadata of the external payroll.
    class ExternalPayrollMetadata < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Determines if the external payroll can be deleted.
      field :deletable, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('deletable') } }


      sig { params(deletable: T.nilable(T::Boolean)).void }
      def initialize(deletable: nil)
        @deletable = deletable
      end
    end
  end
end
