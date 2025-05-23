# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PutV1EmployeesEmployeeIdI9AuthorizationRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig

      # The employee's authorization status
      # 
      #   * `citizen`: A citizen is someone who was born in the United States or is a naturalized citizen living in the United States.
      #   * `noncitizen`: A noncitizen national is someone born in American Samoa, certain former citizens of the former Trust Territory of the Pacific Islands, and certain children of noncitizen nationals born abroad.
      #   * `permanent_resident`: A lawful permanent resident is someone who is not a US citizen and who resides under legally recognized and lawfully recorded permanent residence as an immigrant.
      #   * `alien`: Also referred to as a "noncitizen authorized to work". This includes anyone who is authorized to work in the United States but is not a US citizen, US national or lawful permanent resident.
      # 
      field :authorization_status, ::GustoEmbedded::Operations::AuthorizationStatus, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('authorization_status'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Operations::AuthorizationStatus, false) } }
      # The document's country of issuance.
      # 
      # This is required when the document type is `foreign_passport`.
      # 
      field :country, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('country') } }
      # The document number. Formatting depends on the employee's document type.
      # 
      #   * For `document_type:'uscis_alien_registration_number'`, this must be a USCIS Number/A-Number, which is 7 to 9 digits.
      #   * For `document_type:'form_i94'`, this must be a Form I-94 Admission Number, which is 11 digits.
      #   * For `document_type:'foreign_passport'`, this must be the passport number.
      # 
      # This is required when the document type is present.
      # 
      field :document_number, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('document_number') } }
      # The type of document an employee holds, based on their authorization status.
      # 
      #   * This is unused for authorization status `citizen` or `noncitizen`.
      #   * If the authorization status is `permanent_resident`, this must be `uscis_alien_registration_number`.
      #   * If the authorization status is `alien`, this is required and may be any of the valid values.
      # 
      field :document_type, T.nilable(::GustoEmbedded::Operations::DocumentType), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('document_type'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Operations::DocumentType, true) } }
      # The document's expiration date.
      # 
      # This may only be used when the authorization status is `alien`.
      # 
      field :expiration_date, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('expiration_date') } }
      # The current version of the object. See the [versioning guide](https://docs.gusto.com/embedded-payroll/docs/versioning#object-layer) for information on how to use this field. If supplied, this endpoint will update the existing I-9 authorization if it exists.
      field :version, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('version') } }


      sig { params(authorization_status: ::GustoEmbedded::Operations::AuthorizationStatus, country: T.nilable(::String), document_number: T.nilable(::String), document_type: T.nilable(::GustoEmbedded::Operations::DocumentType), expiration_date: T.nilable(::String), version: T.nilable(::String)).void }
      def initialize(authorization_status: nil, country: nil, document_number: nil, document_type: nil, expiration_date: nil, version: nil)
        @authorization_status = authorization_status
        @country = country
        @document_number = document_number
        @document_type = document_type
        @expiration_date = expiration_date
        @version = version
      end
    end
  end
end
