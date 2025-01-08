# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class ResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :questions, T::Array[::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdStateTaxesQuestions], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('questions') } }

      field :state, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('state') } }


      sig { params(questions: T::Array[::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdStateTaxesQuestions], state: ::String).void }
      def initialize(questions: nil, state: nil)
        @questions = questions
        @state = state
      end
    end
  end
end
