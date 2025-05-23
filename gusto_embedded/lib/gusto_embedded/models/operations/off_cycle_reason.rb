# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  
    # OffCycleReason - An off cycle payroll reason. Select one from the following list.
    class OffCycleReason < T::Enum
      enums do
        BONUS = new('Bonus')
        CORRECTION = new('Correction')
        DISMISSED_EMPLOYEE = new('Dismissed employee')
        TRANSITION_FROM_OLD_PAY_SCHEDULE = new('Transition from old pay schedule')
      end
    end
  end
end
