# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class GetV1EmployeesEmployeeUuidPayStubsRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The UUID of the employee
      field :employee_id, ::String, { 'path_param': { 'field_name': 'employee_id', 'style': 'simple', 'explode': false } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::GustoEmbedded::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(employee_id: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).void }
      def initialize(employee_id: nil, x_gusto_api_version: nil)
        @employee_id = employee_id
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
