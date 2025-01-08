# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # The signatory's home address
    class HomeAddress < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :city, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('city') } }

      field :state, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('state') } }

      field :street_1, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('street_1') } }

      field :zip, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('zip') } }

      field :street_2, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('street_2') } }


      sig { params(city: ::String, state: ::String, street_1: ::String, zip: ::String, street_2: T.nilable(::String)).void }
      def initialize(city: nil, state: nil, street_1: nil, zip: nil, street_2: nil)
        @city = city
        @state = state
        @street_1 = street_1
        @zip = zip
        @street_2 = street_2
      end
    end
  end
end
