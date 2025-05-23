# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  

    class Department < ::Crystalline::FieldAugmented
      extend T::Sig

      # The UUID of the company
      field :company_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('company_uuid') } }
      # Array of contractors assigned to the department.
      field :contractors, T.nilable(T::Array[::GustoEmbedded::Shared::Contractors]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('contractors') } }
      # Array of employees assigned to the department.
      field :employees, T.nilable(T::Array[::GustoEmbedded::Shared::DepartmentEmployees]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('employees') } }
      # Name of the department
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('title') } }
      # The UUID of the department
      field :uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('uuid') } }
      # The current version of the object. See the [versioning guide](https://docs.gusto.com/embedded-payroll/docs/idempotency) for information on how to use this field.
      field :version, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('version') } }


      sig { params(company_uuid: T.nilable(::String), contractors: T.nilable(T::Array[::GustoEmbedded::Shared::Contractors]), employees: T.nilable(T::Array[::GustoEmbedded::Shared::DepartmentEmployees]), title: T.nilable(::String), uuid: T.nilable(::String), version: T.nilable(::String)).void }
      def initialize(company_uuid: nil, contractors: nil, employees: nil, title: nil, uuid: nil, version: nil)
        @company_uuid = company_uuid
        @contractors = contractors
        @employees = employees
        @title = title
        @uuid = uuid
        @version = version
      end
    end
  end
end
