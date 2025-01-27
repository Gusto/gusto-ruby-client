# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # The representation of a pay schedule assignment.
    class PayScheduleAssignment < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Default pay schedule for employees.
      field :default_pay_schedule_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('default_pay_schedule_uuid') } }
      # List of departments and their pay schedules.
      field :departments, T.nilable(T::Array[::OpenApiSDK::Shared::PayScheduleAssignmentDepartment]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('departments') } }
      # List of employees and their pay schedules.
      field :employees, T.nilable(T::Array[::OpenApiSDK::Shared::PayScheduleAssignmentEmployee]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('employees') } }
      # Pay schedule for hourly employees.
      field :hourly_pay_schedule_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('hourly_pay_schedule_uuid') } }
      # Pay schedule for salaried employees.
      field :salaried_pay_schedule_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('salaried_pay_schedule_uuid') } }
      # The pay schedule assignment type.
      field :type, T.nilable(::OpenApiSDK::Shared::Type), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::Type, true) } }


      sig { params(default_pay_schedule_uuid: T.nilable(::String), departments: T.nilable(T::Array[::OpenApiSDK::Shared::PayScheduleAssignmentDepartment]), employees: T.nilable(T::Array[::OpenApiSDK::Shared::PayScheduleAssignmentEmployee]), hourly_pay_schedule_uuid: T.nilable(::String), salaried_pay_schedule_uuid: T.nilable(::String), type: T.nilable(::OpenApiSDK::Shared::Type)).void }
      def initialize(default_pay_schedule_uuid: nil, departments: nil, employees: nil, hourly_pay_schedule_uuid: nil, salaried_pay_schedule_uuid: nil, type: nil)
        @default_pay_schedule_uuid = default_pay_schedule_uuid
        @departments = departments
        @employees = employees
        @hourly_pay_schedule_uuid = hourly_pay_schedule_uuid
        @salaried_pay_schedule_uuid = salaried_pay_schedule_uuid
        @type = type
      end
    end
  end
end
