# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # Example response
    class PayrollCheck < ::Crystalline::FieldAugmented
      extend T::Sig

      # An array of mapping employee uuids to their check numbers
      field :employee_check_number_mapping, T.nilable(T::Array[::GustoEmbedded::Shared::EmployeeCheckNumberMapping]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('employee_check_number_mapping') } }
      # A unique identifier of the payroll.
      field :payroll_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('payroll_uuid') } }
      # The format the checks will be printed.
      field :printing_format, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('printing_format') } }
      # A unique identifier of the Generated Document request
      field :request_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('request_uuid') } }
      # The starting check number for the checks being printed.
      field :starting_check_number, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('starting_check_number') } }
      # Current status of the Generated Document
      field :status, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('status') } }


      sig { params(employee_check_number_mapping: T.nilable(T::Array[::GustoEmbedded::Shared::EmployeeCheckNumberMapping]), payroll_uuid: T.nilable(::String), printing_format: T.nilable(::String), request_uuid: T.nilable(::String), starting_check_number: T.nilable(::String), status: T.nilable(::String)).void }
      def initialize(employee_check_number_mapping: nil, payroll_uuid: nil, printing_format: nil, request_uuid: nil, starting_check_number: nil, status: nil)
        @employee_check_number_mapping = employee_check_number_mapping
        @payroll_uuid = payroll_uuid
        @printing_format = printing_format
        @request_uuid = request_uuid
        @starting_check_number = starting_check_number
        @status = status
      end
    end
  end
end
