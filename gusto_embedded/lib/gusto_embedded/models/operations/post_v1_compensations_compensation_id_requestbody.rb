# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PostV1CompensationsCompensationIdRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig

      # The FLSA status for this compensation. Salaried ('Exempt') employees are paid a fixed salary every pay period. Salaried with overtime ('Salaried Nonexempt') employees are paid a fixed salary every pay period, and receive overtime pay when applicable. Hourly ('Nonexempt') employees are paid for the hours they work, and receive overtime pay when applicable. Commissioned employees ('Commission Only Exempt') earn wages based only on commission. Commissioned with overtime ('Commission Only Nonexempt') earn wages based on commission, and receive overtime pay when applicable. Owners ('Owner') are employees that own at least twenty percent of the company. 
      field :flsa_status, ::GustoEmbedded::Shared::FlsaStatusType, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('flsa_status'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Shared::FlsaStatusType, false) } }
      # The unit accompanying the compensation rate. If the employee is an owner, rate should be 'Paycheck'.
      field :payment_unit, ::GustoEmbedded::Operations::PaymentUnit, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('payment_unit'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Operations::PaymentUnit, false) } }
      # Determines whether the compensation should be adjusted for minimum wage. Only applies to Nonexempt employees.
      field :adjust_for_minimum_wage, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('adjust_for_minimum_wage') } }
      # The date when the compensation takes effect.
      field :effective_date, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('effective_date') } }

      field :minimum_wages, T.nilable(T::Array[::GustoEmbedded::Operations::MinimumWages]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('minimum_wages') } }
      # The dollar amount paid per payment unit.
      field :rate, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('rate') } }


      sig { params(flsa_status: ::GustoEmbedded::Shared::FlsaStatusType, payment_unit: ::GustoEmbedded::Operations::PaymentUnit, adjust_for_minimum_wage: T.nilable(T::Boolean), effective_date: T.nilable(::String), minimum_wages: T.nilable(T::Array[::GustoEmbedded::Operations::MinimumWages]), rate: T.nilable(::String)).void }
      def initialize(flsa_status: nil, payment_unit: nil, adjust_for_minimum_wage: nil, effective_date: nil, minimum_wages: nil, rate: nil)
        @flsa_status = flsa_status
        @payment_unit = payment_unit
        @adjust_for_minimum_wage = adjust_for_minimum_wage
        @effective_date = effective_date
        @minimum_wages = minimum_wages
        @rate = rate
      end
    end
  end
end
