# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PutV1EmployeesEmployeeIdRehireRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The day when the employee returns to work.
      field :effective_date, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('effective_date') } }
      # The boolean flag indicating whether Gusto will file a new hire report for the employee.
      field :file_new_hire_report, T::Boolean, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('file_new_hire_report') } }
      # The current version of the object. See the [versioning guide](https://docs.gusto.com/embedded-payroll/docs/idempotency) for information on how to use this field.
      field :version, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('version') } }
      # The uuid of the employee's work location.
      field :work_location_uuid, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('work_location_uuid') } }
      # The employee's employment status. Supplying an invalid option will set the employment_status to *not_set*.
      field :employment_status, T.nilable(::OpenApiSDK::Operations::EmploymentStatus), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('employment_status'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Operations::EmploymentStatus, true) } }
      # Whether the employee is a two percent shareholder of the company. This field only applies to companies with an S-Corp entity type.
      field :two_percent_shareholder, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('two_percent_shareholder') } }


      sig { params(effective_date: ::String, file_new_hire_report: T::Boolean, version: ::String, work_location_uuid: ::String, employment_status: T.nilable(::OpenApiSDK::Operations::EmploymentStatus), two_percent_shareholder: T.nilable(T::Boolean)).void }
      def initialize(effective_date: nil, file_new_hire_report: nil, version: nil, work_location_uuid: nil, employment_status: nil, two_percent_shareholder: nil)
        @effective_date = effective_date
        @file_new_hire_report = file_new_hire_report
        @version = version
        @work_location_uuid = work_location_uuid
        @employment_status = employment_status
        @two_percent_shareholder = two_percent_shareholder
      end
    end
  end
end
