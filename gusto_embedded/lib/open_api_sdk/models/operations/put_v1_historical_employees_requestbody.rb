# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # Update a historical employee.
    class PutV1HistoricalEmployeesRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :date_of_birth, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('date_of_birth') } }

      field :first_name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('first_name') } }

      field :home_address, ::OpenApiSDK::Operations::PutV1HistoricalEmployeesHomeAddress, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('home_address') } }

      field :job, ::OpenApiSDK::Operations::Job, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('job') } }

      field :last_name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('last_name') } }

      field :ssn, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ssn') } }

      field :termination, ::OpenApiSDK::Operations::Termination, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('termination') } }
      # The current version of the object. See the [versioning guide](https://docs.gusto.com/embedded-payroll/docs/idempotency) for information on how to use this field.
      field :version, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('version') } }

      field :work_address, ::OpenApiSDK::Operations::WorkAddress, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('work_address') } }

      field :employee_state_taxes, T.nilable(::OpenApiSDK::Operations::EmployeeStateTaxes), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('employee_state_taxes') } }

      field :middle_initial, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('middle_initial') } }

      field :preferred_first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('preferred_first_name') } }


      sig { params(date_of_birth: ::String, first_name: ::String, home_address: ::OpenApiSDK::Operations::PutV1HistoricalEmployeesHomeAddress, job: ::OpenApiSDK::Operations::Job, last_name: ::String, ssn: ::String, termination: ::OpenApiSDK::Operations::Termination, version: ::String, work_address: ::OpenApiSDK::Operations::WorkAddress, employee_state_taxes: T.nilable(::OpenApiSDK::Operations::EmployeeStateTaxes), middle_initial: T.nilable(::String), preferred_first_name: T.nilable(::String)).void }
      def initialize(date_of_birth: nil, first_name: nil, home_address: nil, job: nil, last_name: nil, ssn: nil, termination: nil, version: nil, work_address: nil, employee_state_taxes: nil, middle_initial: nil, preferred_first_name: nil)
        @date_of_birth = date_of_birth
        @first_name = first_name
        @home_address = home_address
        @job = job
        @last_name = last_name
        @ssn = ssn
        @termination = termination
        @version = version
        @work_address = work_address
        @employee_state_taxes = employee_state_taxes
        @middle_initial = middle_initial
        @preferred_first_name = preferred_first_name
      end
    end
  end
end
