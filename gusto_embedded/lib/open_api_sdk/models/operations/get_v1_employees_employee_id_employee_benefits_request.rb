# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetV1EmployeesEmployeeIdEmployeeBenefitsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the employee
      field :employee_id, ::String, { 'path_param': { 'field_name': 'employee_id', 'style': 'simple', 'explode': false } }
      # The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.
      field :page, T.nilable(::Float), { 'query_param': { 'field_name': 'page', 'style': 'form', 'explode': true } }
      # Number of objects per page. For majority of endpoints will default to 25
      field :per, T.nilable(::Float), { 'query_param': { 'field_name': 'per', 'style': 'form', 'explode': true } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::OpenApiSDK::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(employee_id: ::String, page: T.nilable(::Float), per: T.nilable(::Float), x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).void }
      def initialize(employee_id: nil, page: nil, per: nil, x_gusto_api_version: nil)
        @employee_id = employee_id
        @page = page
        @per = per
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
