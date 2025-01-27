# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # The contractor’s home address.
    class Address < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :city, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('city') } }

      field :country, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('country') } }

      field :state, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('state') } }

      field :street_1, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('street_1') } }

      field :street_2, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('street_2') } }

      field :zip, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('zip') } }


      sig { params(city: T.nilable(::String), country: T.nilable(::String), state: T.nilable(::String), street_1: T.nilable(::String), street_2: T.nilable(::String), zip: T.nilable(::String)).void }
      def initialize(city: nil, country: nil, state: nil, street_1: nil, street_2: nil, zip: nil)
        @city = city
        @country = country
        @state = state
        @street_1 = street_1
        @street_2 = street_2
        @zip = zip
      end
    end
  end
end
