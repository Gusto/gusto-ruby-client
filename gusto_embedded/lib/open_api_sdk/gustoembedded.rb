# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig

  class GustoEmbedded
    extend T::Sig

    attr_accessor :introspection, :companies, :invoices, :company_attachment, :company_attachments, :federal_tax_details, :industry_selection, :signatories, :flows, :locations, :bank_accounts, :external_payrolls, :payment_configs, :pay_schedules, :employees, :departments, :employee_employments, :employee_addresses, :employee_tax_setup, :employee_payment_method, :employee_payment_methods, :jobs_and_compensations, :jobs_compensations, :jobs, :earning_types, :contractors, :companies_contractors, :contractor_payment_method, :contractor_payment_methods, :webhooks, :contractor_forms, :contractor_documents, :employee_forms, :payrolls, :time_off_policies, :contractor_payments, :contractor_payment_groups, :company_forms, :payrolls_employees, :generated_documents, :reports, :company_benefits, :employee_benefits, :garnishments, :tax_requirements, :holiday_pay_policies, :notifications, :events, :recovery_cases, :ach_transactions, :wire_in_requests

    sig do
      params(client: Faraday::Request,
             security: T.nilable(Shared::Security),
             server_idx: Integer,
             server_url: String,
             url_params: T::Hash[Symbol, String]).void
    end
    def initialize(client: nil,
                   security: nil,
                   server_idx: nil,
                   server_url: nil,
                   url_params: nil)

      ## Instantiates the SDK configuring it with the provided parameters.
      # @param [Faraday::Request] client The faraday HTTP client to use for all operations
      # @param [Shared::Security] security The security details required for authentication
      # @param [::Integer] server_idx The index of the server to use for all operations
      # @param [::String] server_url The server URL to use for all operations
      # @param [::Hash<::Symbol, ::String>] url_params Parameters to optionally template the server URL with

      if client.nil?
        client = Faraday.new(request: {
                          params_encoder: Faraday::FlatParamsEncoder
                        }) do |f|
          f.request :multipart, {}
          # f.response :logger
        end
      end

      if !server_url.nil?
        if !url_params.nil?
          server_url = Utils.template_url(server_url, url_params)
        end
      end
      server_idx = 0 if server_idx.nil?

      @sdk_configuration = SDKConfiguration.new(client, security, server_url, server_idx)
      init_sdks
    end

    sig { params(server_url: String).void }
    def config_server_url(server_url)
      @sdk_configuration.server_url = server_url
      init_sdks
    end

    sig { params(server_idx: Integer).void }
    def config_server(server_idx)
      raise StandardError, "Invalid server index #{server_idx}" if server_idx.negative? || server_idx >= SERVERS.length
      @sdk_configuration.server_idx = server_idx
      init_sdks
    end

    sig { params(security: ::OpenApiSDK::Shared::Security).void }
    def config_security(security)
      @sdk_configuration.security = security
    end

    sig { void }
    def init_sdks
      @introspection = Introspection.new(@sdk_configuration)
      @companies = Companies.new(@sdk_configuration)
      @invoices = Invoices.new(@sdk_configuration)
      @company_attachment = CompanyAttachment.new(@sdk_configuration)
      @company_attachments = CompanyAttachments.new(@sdk_configuration)
      @federal_tax_details = FederalTaxDetails.new(@sdk_configuration)
      @industry_selection = IndustrySelection.new(@sdk_configuration)
      @signatories = Signatories.new(@sdk_configuration)
      @flows = Flows.new(@sdk_configuration)
      @locations = Locations.new(@sdk_configuration)
      @bank_accounts = BankAccounts.new(@sdk_configuration)
      @external_payrolls = ExternalPayrolls.new(@sdk_configuration)
      @payment_configs = PaymentConfigs.new(@sdk_configuration)
      @pay_schedules = PaySchedules.new(@sdk_configuration)
      @employees = Employees.new(@sdk_configuration)
      @departments = Departments.new(@sdk_configuration)
      @employee_employments = EmployeeEmployments.new(@sdk_configuration)
      @employee_addresses = EmployeeAddresses.new(@sdk_configuration)
      @employee_tax_setup = EmployeeTaxSetup.new(@sdk_configuration)
      @employee_payment_method = EmployeePaymentMethod.new(@sdk_configuration)
      @employee_payment_methods = EmployeePaymentMethods.new(@sdk_configuration)
      @jobs_and_compensations = JobsAndCompensations.new(@sdk_configuration)
      @jobs_compensations = JobsCompensations.new(@sdk_configuration)
      @jobs = Jobs.new(@sdk_configuration)
      @earning_types = EarningTypes.new(@sdk_configuration)
      @contractors = Contractors.new(@sdk_configuration)
      @companies_contractors = CompaniesContractors.new(@sdk_configuration)
      @contractor_payment_method = ContractorPaymentMethod.new(@sdk_configuration)
      @contractor_payment_methods = ContractorPaymentMethods.new(@sdk_configuration)
      @webhooks = Webhooks.new(@sdk_configuration)
      @contractor_forms = ContractorForms.new(@sdk_configuration)
      @contractor_documents = ContractorDocuments.new(@sdk_configuration)
      @employee_forms = EmployeeForms.new(@sdk_configuration)
      @payrolls = Payrolls.new(@sdk_configuration)
      @time_off_policies = TimeOffPolicies.new(@sdk_configuration)
      @contractor_payments = ContractorPayments.new(@sdk_configuration)
      @contractor_payment_groups = ContractorPaymentGroups.new(@sdk_configuration)
      @company_forms = CompanyForms.new(@sdk_configuration)
      @payrolls_employees = PayrollsEmployees.new(@sdk_configuration)
      @generated_documents = GeneratedDocuments.new(@sdk_configuration)
      @reports = Reports.new(@sdk_configuration)
      @company_benefits = CompanyBenefits.new(@sdk_configuration)
      @employee_benefits = EmployeeBenefits.new(@sdk_configuration)
      @garnishments = Garnishments.new(@sdk_configuration)
      @tax_requirements = TaxRequirements.new(@sdk_configuration)
      @holiday_pay_policies = HolidayPayPolicies.new(@sdk_configuration)
      @notifications = Notifications.new(@sdk_configuration)
      @events = Events.new(@sdk_configuration)
      @recovery_cases = RecoveryCases.new(@sdk_configuration)
      @ach_transactions = AchTransactions.new(@sdk_configuration)
      @wire_in_requests = WireInRequests.new(@sdk_configuration)
    end
  end
end
