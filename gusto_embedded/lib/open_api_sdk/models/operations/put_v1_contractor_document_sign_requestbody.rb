# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PutV1ContractorDocumentSignRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Whether you agree to sign electronically
      field :agree, T::Boolean, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('agree') } }
      # List of fields and the values they will be set to.
      field :fields_, T::Array[::OpenApiSDK::Operations::Fields], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('fields') } }
      # The IP address of the signatory who signed the form.
      field :signed_by_ip_address, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('signed_by_ip_address') } }


      sig { params(agree: T::Boolean, fields_: T::Array[::OpenApiSDK::Operations::Fields], signed_by_ip_address: ::String).void }
      def initialize(agree: nil, fields_: nil, signed_by_ip_address: nil)
        @agree = agree
        @fields_ = fields_
        @signed_by_ip_address = signed_by_ip_address
      end
    end
  end
end
