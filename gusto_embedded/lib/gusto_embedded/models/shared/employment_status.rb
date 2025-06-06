# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # EmploymentStatus - The employee's employment status. Supplying an invalid option will set the employment_status to *not_set*.
    class EmploymentStatus < T::Enum
      enums do
        PART_TIME = new('part_time')
        FULL_TIME = new('full_time')
        PART_TIME_ELIGIBLE = new('part_time_eligible')
        VARIABLE = new('variable')
        SEASONAL = new('seasonal')
        NOT_SET = new('not_set')
      end
    end
  end
end
