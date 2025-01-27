# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # Example response
    class PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Whether the latest terms have been accepted by the user.
      field :latest_terms_accepted, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('latest_terms_accepted') } }


      sig { params(latest_terms_accepted: T.nilable(T::Boolean)).void }
      def initialize(latest_terms_accepted: nil)
        @latest_terms_accepted = latest_terms_accepted
      end
    end
  end
end
