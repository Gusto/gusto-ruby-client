# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class ResponseBody < ::Crystalline::FieldAugmented
      extend T::Sig


      field :questions, T::Array[::GustoEmbedded::Operations::PutV1EmployeesEmployeeIdStateTaxesQuestions], { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('questions') } }

      field :state, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('state') } }


      sig { params(questions: T::Array[::GustoEmbedded::Operations::PutV1EmployeesEmployeeIdStateTaxesQuestions], state: ::String).void }
      def initialize(questions: nil, state: nil)
        @questions = questions
        @state = state
      end
    end
  end
end
