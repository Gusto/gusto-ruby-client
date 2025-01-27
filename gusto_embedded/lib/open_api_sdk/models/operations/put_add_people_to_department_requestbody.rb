# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PutAddPeopleToDepartmentRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Array of contractors to add to the department
      field :contractors, T.nilable(T::Array[::OpenApiSDK::Operations::Contractors]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('contractors') } }
      # Array of employees to add to the department
      field :employees, T.nilable(T::Array[::OpenApiSDK::Operations::Employees]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('employees') } }
      # The current version of the object. See the [versioning guide](https://docs.gusto.com/embedded-payroll/docs/versioning#object-layer) for information on how to use this field.
      field :version, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('version') } }


      sig { params(contractors: T.nilable(T::Array[::OpenApiSDK::Operations::Contractors]), employees: T.nilable(T::Array[::OpenApiSDK::Operations::Employees]), version: T.nilable(::String)).void }
      def initialize(contractors: nil, employees: nil, version: nil)
        @contractors = contractors
        @employees = employees
        @version = version
      end
    end
  end
end
