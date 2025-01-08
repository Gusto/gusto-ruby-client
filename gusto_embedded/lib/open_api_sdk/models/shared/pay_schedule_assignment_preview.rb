# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # The representation of a pay schedule assignment preview.
    class PayScheduleAssignmentPreview < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # A list of pay schedule changes including pay period and transition pay period.
      field :employee_changes, T.nilable(T::Array[::OpenApiSDK::Shared::PayScheduleAssignmentEmployeeChange]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('employee_changes') } }
      # The pay schedule assignment type.
      field :type, T.nilable(::OpenApiSDK::Shared::PayScheduleAssignmentPreviewType), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::PayScheduleAssignmentPreviewType, true) } }


      sig { params(employee_changes: T.nilable(T::Array[::OpenApiSDK::Shared::PayScheduleAssignmentEmployeeChange]), type: T.nilable(::OpenApiSDK::Shared::PayScheduleAssignmentPreviewType)).void }
      def initialize(employee_changes: nil, type: nil)
        @employee_changes = employee_changes
        @type = type
      end
    end
  end
end
