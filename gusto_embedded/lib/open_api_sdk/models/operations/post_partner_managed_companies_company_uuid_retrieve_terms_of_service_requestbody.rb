# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PostPartnerManagedCompaniesCompanyUuidRetrieveTermsOfServiceRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The user's email address on Gusto. You can retrieve the user's email via company's `/admins`, `/employees`, `/signatories`, and `/contractors` endpoints.
      field :email, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('email') } }


      sig { params(email: ::String).void }
      def initialize(email: nil)
        @email = email
      end
    end
  end
end
