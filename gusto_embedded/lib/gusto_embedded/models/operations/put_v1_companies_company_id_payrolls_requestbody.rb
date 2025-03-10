# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PutV1CompaniesCompanyIdPayrollsRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig


      field :employee_compensations, T::Array[::GustoEmbedded::Operations::EmployeeCompensations], { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('employee_compensations') } }


      sig { params(employee_compensations: T::Array[::GustoEmbedded::Operations::EmployeeCompensations]).void }
      def initialize(employee_compensations: nil)
        @employee_compensations = employee_compensations
      end
    end
  end
end
