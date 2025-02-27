# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PutV1EmployeesEmployeeIdStateTaxesQuestions < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :key, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }

      field :answers, T.nilable(T::Array[::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdStateTaxesAnswers]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('answers') } }


      sig { params(key: ::String, answers: T.nilable(T::Array[::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdStateTaxesAnswers])).void }
      def initialize(key: nil, answers: nil)
        @key = key
        @answers = answers
      end
    end
  end
end
