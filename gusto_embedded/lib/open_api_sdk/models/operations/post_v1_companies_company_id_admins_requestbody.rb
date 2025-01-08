# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PostV1CompaniesCompanyIdAdminsRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The email of the admin for Gusto's system. If the email matches an existing user, this will create an admin account for them.
      field :email, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('email') } }
      # The first name of the admin.
      field :first_name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('first_name') } }
      # The last name of the admin.
      field :last_name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('last_name') } }


      sig { params(email: ::String, first_name: ::String, last_name: ::String).void }
      def initialize(email: nil, first_name: nil, last_name: nil)
        @email = email
        @first_name = first_name
        @last_name = last_name
      end
    end
  end
end
