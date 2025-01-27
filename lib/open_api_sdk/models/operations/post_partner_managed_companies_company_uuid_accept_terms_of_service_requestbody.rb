# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The user's email address on Gusto. You can retrieve the user's email via company's `/admins`, `/employees`, `/signatories`, and `/contractors` endpoints.
      field :email, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('email') } }
      # The user ID on your platform.
      field :external_user_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('external_user_id') } }
      # The IP address of the user who viewed and accepted the Terms of Service.
      field :ip_address, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ip_address') } }


      sig { params(email: ::String, external_user_id: ::String, ip_address: ::String).void }
      def initialize(email: nil, external_user_id: nil, ip_address: nil)
        @email = email
        @external_user_id = external_user_id
        @ip_address = ip_address
      end
    end
  end
end
