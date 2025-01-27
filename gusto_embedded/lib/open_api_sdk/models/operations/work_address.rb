# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class WorkAddress < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Reference to a company location
      field :location_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('location_uuid') } }


      sig { params(location_uuid: T.nilable(::String)).void }
      def initialize(location_uuid: nil)
        @location_uuid = location_uuid
      end
    end
  end
end
