# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class ResponseBody < ::Crystalline::FieldAugmented
      extend T::Sig

      # If all requirements for the state have been satisfied such that the company can complete
      # onboarding, the company is `setup_complete` in the state. A company must be `setup_complete` in
      # all relevant states to complete the `state_setup` company onboarding step.
      field :setup_complete, T::Boolean, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('setup_complete') } }
      # One of the two-letter state abbreviations for the fifty United States and the District of Columbia (DC)
      field :state, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('state') } }


      sig { params(setup_complete: T::Boolean, state: ::String).void }
      def initialize(setup_complete: nil, state: nil)
        @setup_complete = setup_complete
        @state = state
      end
    end
  end
end
