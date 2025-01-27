# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # Representation of a Minimum Wage
    class MinimumWage < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The governing authority that created the minimum wage, e.g. "City", "State", or "Federal".
      field :authority, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('authority') } }
      # The date the minimum wage rule is effective on.
      field :effective_date, ::Date, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('effective_date'), 'decoder': Utils.date_from_iso_format(false) } }
      # unique identifier of a minimum wage
      field :uuid, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('uuid') } }
      # The wage rate for a minimum wage record. Represented as a float, e.g. "15.0".
      field :wage, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('wage') } }
      # The type of wage the minimum wage applies to, e.g. "Regular", "Regular-Industry-Specific".
      field :wage_type, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('wage_type') } }
      # Description of parties the minimum wage applies to.
      field :notes, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('notes') } }


      sig { params(authority: ::String, effective_date: ::Date, uuid: ::String, wage: ::String, wage_type: ::String, notes: T.nilable(::String)).void }
      def initialize(authority: nil, effective_date: nil, uuid: nil, wage: nil, wage_type: nil, notes: nil)
        @authority = authority
        @effective_date = effective_date
        @uuid = uuid
        @wage = wage
        @wage_type = wage_type
        @notes = notes
      end
    end
  end
end
