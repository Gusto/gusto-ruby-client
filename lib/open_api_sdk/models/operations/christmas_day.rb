# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class ChristmasDay < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :selected, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('selected') } }


      sig { params(selected: T.nilable(T::Boolean)).void }
      def initialize(selected: nil)
        @selected = selected
      end
    end
  end
end
