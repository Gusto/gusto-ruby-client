# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PostV1PartnerManagedCompaniesRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :company, ::OpenApiSDK::Operations::Company, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('company') } }
      # Information for the user who will be the primary payroll administrator for the new company.
      field :user, ::OpenApiSDK::Operations::User, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('user') } }


      sig { params(company: ::OpenApiSDK::Operations::Company, user: ::OpenApiSDK::Operations::User).void }
      def initialize(company: nil, user: nil)
        @company = company
        @user = user
      end
    end
  end
end
