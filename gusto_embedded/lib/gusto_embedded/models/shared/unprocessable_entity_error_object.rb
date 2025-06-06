# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # Unprocessable Entity
    #   
    # This may happen when the body of your request contains errors such as `invalid_attribute_value`, or the request fails due to an `invalid_operation`. See the [Errors Categories](https://docs.gusto.com/embedded-payroll/docs/error-categories) guide for more details.
    # 
    class UnprocessableEntityErrorObject < ::Crystalline::FieldAugmented
      extend T::Sig


      field :errors, T::Array[::GustoEmbedded::Shared::EntityErrorObject], { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('errors') } }


      sig { params(errors: T::Array[::GustoEmbedded::Shared::EntityErrorObject]).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end
  end
end
