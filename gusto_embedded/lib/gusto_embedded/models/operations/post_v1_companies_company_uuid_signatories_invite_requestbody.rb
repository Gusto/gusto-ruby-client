# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PostV1CompaniesCompanyUuidSignatoriesInviteRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig


      field :email, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('email') } }

      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('first_name') } }

      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('last_name') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('title') } }


      sig { params(email: ::String, first_name: T.nilable(::String), last_name: T.nilable(::String), title: T.nilable(::String)).void }
      def initialize(email: nil, first_name: nil, last_name: nil, title: nil)
        @email = email
        @first_name = first_name
        @last_name = last_name
        @title = title
      end
    end
  end
end
