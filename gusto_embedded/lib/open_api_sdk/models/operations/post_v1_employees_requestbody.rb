# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # Create an employee.
    class PostV1EmployeesRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :first_name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('first_name') } }

      field :last_name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('last_name') } }

      field :date_of_birth, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('date_of_birth') } }
      # The employee's personal email address.
      field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('email') } }

      field :middle_initial, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('middle_initial') } }

      field :preferred_first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('preferred_first_name') } }
      # If true, employee is expected to self-onboard. If false, payroll admin is expected to enter in the employee's onboarding information
      field :self_onboarding, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('self_onboarding') } }

      field :ssn, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ssn') } }


      sig { params(first_name: ::String, last_name: ::String, date_of_birth: T.nilable(::String), email: T.nilable(::String), middle_initial: T.nilable(::String), preferred_first_name: T.nilable(::String), self_onboarding: T.nilable(T::Boolean), ssn: T.nilable(::String)).void }
      def initialize(first_name: nil, last_name: nil, date_of_birth: nil, email: nil, middle_initial: nil, preferred_first_name: nil, self_onboarding: nil, ssn: nil)
        @first_name = first_name
        @last_name = last_name
        @date_of_birth = date_of_birth
        @email = email
        @middle_initial = middle_initial
        @preferred_first_name = preferred_first_name
        @self_onboarding = self_onboarding
        @ssn = ssn
      end
    end
  end
end
