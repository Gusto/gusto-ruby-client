# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # PayScheduleAssignmentPreviewType - The pay schedule assignment type.
    class PayScheduleAssignmentPreviewType < T::Enum
      enums do
        SINGLE = new('single')
        HOURLY_SALARIED = new('hourly_salaried')
        BY_EMPLOYEE = new('by_employee')
        BY_DEPARTMENT = new('by_department')
      end
    end
  end
end
