# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PostDepartmentsRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title') } }


      sig { params(title: T.nilable(::String)).void }
      def initialize(title: nil)
        @title = title
      end
    end
  end
end
