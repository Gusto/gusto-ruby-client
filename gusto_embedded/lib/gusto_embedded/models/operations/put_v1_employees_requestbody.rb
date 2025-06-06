# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PutV1EmployeesRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig

      # The current version of the object. See the [versioning guide](https://docs.gusto.com/embedded-payroll/docs/idempotency) for information on how to use this field.
      field :version, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('version') } }

      field :date_of_birth, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('date_of_birth') } }

      field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('email') } }

      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('first_name') } }

      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('last_name') } }

      field :middle_initial, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('middle_initial') } }

      field :preferred_first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('preferred_first_name') } }

      field :ssn, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('ssn') } }
      # Whether the employee is a two percent shareholder of the company. This field only applies to companies with an S-Corp entity type.
      field :two_percent_shareholder, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('two_percent_shareholder') } }


      sig { params(version: ::String, date_of_birth: T.nilable(::String), email: T.nilable(::String), first_name: T.nilable(::String), last_name: T.nilable(::String), middle_initial: T.nilable(::String), preferred_first_name: T.nilable(::String), ssn: T.nilable(::String), two_percent_shareholder: T.nilable(T::Boolean)).void }
      def initialize(version: nil, date_of_birth: nil, email: nil, first_name: nil, last_name: nil, middle_initial: nil, preferred_first_name: nil, ssn: nil, two_percent_shareholder: nil)
        @version = version
        @date_of_birth = date_of_birth
        @email = email
        @first_name = first_name
        @last_name = last_name
        @middle_initial = middle_initial
        @preferred_first_name = preferred_first_name
        @ssn = ssn
        @two_percent_shareholder = two_percent_shareholder
      end
    end
  end
end
