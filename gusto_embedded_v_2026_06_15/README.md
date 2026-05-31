# gusto_embedded_client_v_2026_06_15

Developer-friendly & type-safe Ruby SDK specifically catered to leverage *gusto_embedded_client_v_2026_06_15* API.

[![Built by Speakeasy](https://img.shields.io/badge/Built_by-SPEAKEASY-374151?style=for-the-badge&labelColor=f3f4f6)](https://www.speakeasy.com/?utm_source=gusto-embedded-client-v-2026-06-15&utm_campaign=ruby)
[![License: MIT](https://img.shields.io/badge/LICENSE_//_MIT-3b5bdb?style=for-the-badge&labelColor=eff6ff)](https://opensource.org/licenses/MIT)


<br /><br />
> [!IMPORTANT]
> This SDK is not yet ready for production use. To complete setup please follow the steps outlined in your [workspace](https://app.speakeasy.com/org/gusto/ruby-sdk). Delete this section before > publishing to a package manager.

<!-- Start Summary [summary] -->
## Summary

Gusto API: Welcome to Gusto's Embedded Payroll API documentation!
<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents
<!-- $toc-max-depth=2 -->
* [gusto_embedded_client_v_2026_06_15](#gustoembeddedclientv20260615)
  * [SDK Installation](#sdk-installation)
  * [SDK Example Usage](#sdk-example-usage)
  * [Authentication](#authentication)
  * [Available Resources and Operations](#available-resources-and-operations)
  * [Error Handling](#error-handling)
  * [Server Selection](#server-selection)
* [Development](#development)
  * [Maturity](#maturity)
  * [Contributions](#contributions)

<!-- End Table of Contents [toc] -->

<!-- Start SDK Installation [installation] -->
## SDK Installation

The SDK can be installed using [RubyGems](https://rubygems.org/):

```bash
gem install gusto_embedded_client_v_2026_06_15
```
<!-- End SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)

req = Models::Operations::GetAchTransactionsRequest.new(
  company_uuid: '<id>'
)
res = s.ach_transactions.get_all(request: req)

unless res.ach_transaction_list.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Authentication [security] -->
## Authentication

### Per-Client Security Schemes

This SDK supports the following security scheme globally:

| Name                  | Type | Scheme      |
| --------------------- | ---- | ----------- |
| `company_access_auth` | http | HTTP Bearer |

You can set the security parameters through the `security` optional parameter when initializing the SDK client instance. For example:
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)

req = Models::Operations::GetAchTransactionsRequest.new(
  company_uuid: '<id>'
)
res = s.ach_transactions.get_all(request: req)

unless res.ach_transaction_list.nil?
  # handle response
end

```

### Per-Operation Security Schemes

Some operations in this SDK require the security scheme to be specified at the request level. For example:
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.companies.create_partner_managed(security: Models::Operations::PostV1PartnerManagedCompaniesSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), partner_managed_company_create_request: Models::Shared::PartnerManagedCompanyCreateRequest.new(
  user: Models::Shared::User.new(
    first_name: 'Marco',
    last_name: 'Trantow',
    email: 'Jewell_Greenholt72@hotmail.com'
  ),
  company: Models::Shared::PartnerManagedCompanyCreateRequestCompany.new(
    name: '<value>'
  )
), x_gusto_api_version: Models::Operations::PostV1PartnerManagedCompaniesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.partner_managed_company.nil?
  # handle response
end

```
<!-- End Authentication [security] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [AchTransactions](docs/sdks/achtransactions/README.md)

* [get_all](docs/sdks/achtransactions/README.md#get_all) - Get all ACH transactions for a company

### [BankAccounts](docs/sdks/bankaccounts/README.md)

* [get](docs/sdks/bankaccounts/README.md#get) - Get all company bank accounts
* [create](docs/sdks/bankaccounts/README.md#create) - Create a company bank account
* [verify](docs/sdks/bankaccounts/README.md#verify) - Verify a company bank account
* [create_from_plaid_token](docs/sdks/bankaccounts/README.md#create_from_plaid_token) - Create a bank account from a plaid processor token
* [delete_v1_companies_company_id_bank_accounts_bank_account_id](docs/sdks/bankaccounts/README.md#delete_v1_companies_company_id_bank_accounts_bank_account_id) - Delete a company bank account

### [Companies](docs/sdks/companies/README.md)

* [list_admins](docs/sdks/companies/README.md#list_admins) - Get all the admins at a company
* [create_admin](docs/sdks/companies/README.md#create_admin) - Create an admin for the company
* [get](docs/sdks/companies/README.md#get) - Get a company
* [update](docs/sdks/companies/README.md#update) - Update a company
* [get_custom_fields](docs/sdks/companies/README.md#get_custom_fields) - Get the custom fields of a company
* [get_onboarding_status](docs/sdks/companies/README.md#get_onboarding_status) - Get company onboarding status
* [finish_onboarding](docs/sdks/companies/README.md#finish_onboarding) - Finish company onboarding
* [migrate](docs/sdks/companies/README.md#migrate) - Migrate company to embedded payroll
* [create_partner_managed](docs/sdks/companies/README.md#create_partner_managed) - Create a partner managed company
* [get_v1_partner_managed_companies_company_uuid_migration_readiness](docs/sdks/companies/README.md#get_v1_partner_managed_companies_company_uuid_migration_readiness) - Check company migration readiness
* [~~accept_terms_of_service~~](docs/sdks/companies/README.md#accept_terms_of_service) - Accept terms of service for an admin :warning: **Deprecated**
* [~~retrieve_terms_of_service~~](docs/sdks/companies/README.md#retrieve_terms_of_service) - Retrieve terms of service status for an admin :warning: **Deprecated**
* [get_v1_partner_managed_companies_company_uuid_terms_of_service](docs/sdks/companies/README.md#get_v1_partner_managed_companies_company_uuid_terms_of_service) - Get the terms of service status for a company
* [put_v1_partner_managed_companies_company_uuid_terms_of_service](docs/sdks/companies/README.md#put_v1_partner_managed_companies_company_uuid_terms_of_service) - Check terms of service status for a specific user
* [post_v1_partner_managed_companies_company_uuid_terms_of_service](docs/sdks/companies/README.md#post_v1_partner_managed_companies_company_uuid_terms_of_service) - Accept terms of service for a specific user

### [Companies.Suspensions](docs/sdks/suspensions/README.md)

* [get](docs/sdks/suspensions/README.md#get) - Get suspensions for this company
* [suspend](docs/sdks/suspensions/README.md#suspend) - Suspend a company's account

### [CompanyAttachment](docs/sdks/companyattachment/README.md)

* [get_download_url](docs/sdks/companyattachment/README.md#get_download_url) - Get a temporary url to download the Company Attachment file

### [CompanyAttachments](docs/sdks/companyattachments/README.md)

* [get_list](docs/sdks/companyattachments/README.md#get_list) - Get List of Company Attachments
* [create](docs/sdks/companyattachments/README.md#create) - Create Company Attachment and Upload File
* [get_details](docs/sdks/companyattachments/README.md#get_details) - Get Company Attachment Details

### [CompanyBenefits](docs/sdks/companybenefits/README.md)

* [get_all](docs/sdks/companybenefits/README.md#get_all) - Get all supported benefits
* [get_supported](docs/sdks/companybenefits/README.md#get_supported) - Get a supported benefit
* [get_requirements](docs/sdks/companybenefits/README.md#get_requirements) - Get benefit fields requirements by benefit type
* [list](docs/sdks/companybenefits/README.md#list) - Get benefits for a company
* [create](docs/sdks/companybenefits/README.md#create) - Create a company benefit
* [get](docs/sdks/companybenefits/README.md#get) - Get a company benefit
* [update](docs/sdks/companybenefits/README.md#update) - Update a company benefit
* [delete](docs/sdks/companybenefits/README.md#delete) - Delete a company benefit
* [get_employee_benefits](docs/sdks/companybenefits/README.md#get_employee_benefits) - Get all employee benefits for a company benefit
* [update_employee_benefits](docs/sdks/companybenefits/README.md#update_employee_benefits) - Bulk update employee benefits for a company benefit
* [get_summary](docs/sdks/companybenefits/README.md#get_summary) - Get company benefit summary by company benefit id.
* [get_v1_company_benefits_company_benefit_id_contribution_exclusions](docs/sdks/companybenefits/README.md#get_v1_company_benefits_company_benefit_id_contribution_exclusions) - Get contribution exclusions for a company benefit
* [put_v1_company_benefits_company_benefit_id_contribution_exclusions](docs/sdks/companybenefits/README.md#put_v1_company_benefits_company_benefit_id_contribution_exclusions) - Update contribution exclusions for a company benefit

### [CompanyForms](docs/sdks/companyforms/README.md)

* [get_all](docs/sdks/companyforms/README.md#get_all) - Get all company forms
* [get](docs/sdks/companyforms/README.md#get) - Get a company form
* [get_pdf](docs/sdks/companyforms/README.md#get_pdf) - Get a company form pdf
* [sign](docs/sdks/companyforms/README.md#sign) - Sign a company form

### [ContractorDocuments](docs/sdks/contractordocuments/README.md)

* [get_all](docs/sdks/contractordocuments/README.md#get_all) - Get all contractor documents
* [get](docs/sdks/contractordocuments/README.md#get) - Get a contractor document
* [get_pdf](docs/sdks/contractordocuments/README.md#get_pdf) - Get the contractor document pdf
* [sign](docs/sdks/contractordocuments/README.md#sign) - Sign a contractor document

### [ContractorForms](docs/sdks/contractorforms/README.md)

* [list](docs/sdks/contractorforms/README.md#list) - Get all contractor forms
* [get](docs/sdks/contractorforms/README.md#get) - Get a contractor form
* [get_pdf](docs/sdks/contractorforms/README.md#get_pdf) - Get the contractor form pdf
* [generate1099](docs/sdks/contractorforms/README.md#generate1099) - Generate a 1099 form [DEMO]

### [ContractorPaymentGroups](docs/sdks/contractorpaymentgroups/README.md)

* [preview](docs/sdks/contractorpaymentgroups/README.md#preview) - Preview a contractor payment group
* [fund](docs/sdks/contractorpaymentgroups/README.md#fund) - Fund a contractor payment group [DEMO]
* [get_list](docs/sdks/contractorpaymentgroups/README.md#get_list) - Get contractor payment groups for a company
* [create](docs/sdks/contractorpaymentgroups/README.md#create) - Create a contractor payment group
* [get](docs/sdks/contractorpaymentgroups/README.md#get) - Get a contractor payment group
* [delete](docs/sdks/contractorpaymentgroups/README.md#delete) - Cancel a contractor payment group
* [get_v1_contractor_payment_groups_id_partner_disbursements](docs/sdks/contractorpaymentgroups/README.md#get_v1_contractor_payment_groups_id_partner_disbursements) - Get partner disbursements for a contractor payment group
* [patch_v1_contractor_payment_groups_id_partner_disbursements](docs/sdks/contractorpaymentgroups/README.md#patch_v1_contractor_payment_groups_id_partner_disbursements) - Update partner disbursements for a contractor payment group

### [ContractorPaymentMethod](docs/sdks/contractorpaymentmethod/README.md)

* [get_bank_accounts](docs/sdks/contractorpaymentmethod/README.md#get_bank_accounts) - Get all contractor bank accounts
* [get](docs/sdks/contractorpaymentmethod/README.md#get) - Get a contractor's payment method
* [update](docs/sdks/contractorpaymentmethod/README.md#update) - Update a contractor's payment method

### [ContractorPaymentMethods](docs/sdks/contractorpaymentmethods/README.md)

* [create_bank_account](docs/sdks/contractorpaymentmethods/README.md#create_bank_account) - Create a contractor bank account

### [ContractorPayments](docs/sdks/contractorpayments/README.md)

* [list](docs/sdks/contractorpayments/README.md#list) - Get contractor payments for a company
* [create](docs/sdks/contractorpayments/README.md#create) - Create a contractor payment
* [get](docs/sdks/contractorpayments/README.md#get) - Get a single contractor payment
* [delete](docs/sdks/contractorpayments/README.md#delete) - Cancel a contractor payment
* [preview](docs/sdks/contractorpayments/README.md#preview) - Preview contractor payment debit date
* [get_receipt](docs/sdks/contractorpayments/README.md#get_receipt) - Get a single contractor payment receipt
* [fund](docs/sdks/contractorpayments/README.md#fund) - Fund a contractor payment [DEMO]
* [get_v1_contractor_payments_contractor_payment_id_pdf](docs/sdks/contractorpayments/README.md#get_v1_contractor_payments_contractor_payment_id_pdf) - Get a contractor payment PDF

### [Contractors](docs/sdks/contractors/README.md)

* [get_address](docs/sdks/contractors/README.md#get_address) - Get a contractor address
* [update_address](docs/sdks/contractors/README.md#update_address) - Create or update a contractor's address
* [get_v1_companies_company_id_contractors_payment_details](docs/sdks/contractors/README.md#get_v1_companies_company_id_contractors_payment_details) - List contractor payment details
* [post_v1_contractors_contractor_uuid_rehire](docs/sdks/contractors/README.md#post_v1_contractors_contractor_uuid_rehire) - Schedule a contractor rehire
* [delete_v1_contractors_contractor_uuid_rehire](docs/sdks/contractors/README.md#delete_v1_contractors_contractor_uuid_rehire) - Cancel a pending contractor rehire
* [post_v1_contractors_contractor_uuid_termination](docs/sdks/contractors/README.md#post_v1_contractors_contractor_uuid_termination) - Schedule a contractor termination
* [delete_v1_contractors_contractor_uuid_termination](docs/sdks/contractors/README.md#delete_v1_contractors_contractor_uuid_termination) - Cancel a pending contractor termination
* [get](docs/sdks/contractors/README.md#get) - Get a contractor
* [update](docs/sdks/contractors/README.md#update) - Update a contractor
* [delete](docs/sdks/contractors/README.md#delete) - Delete a contractor
* [list](docs/sdks/contractors/README.md#list) - Get contractors of a company
* [create](docs/sdks/contractors/README.md#create) - Create a contractor
* [get_onboarding_status](docs/sdks/contractors/README.md#get_onboarding_status) - Get the contractor's onboarding status
* [update_onboarding_status](docs/sdks/contractors/README.md#update_onboarding_status) - Change the contractor's onboarding status

### [Departments](docs/sdks/departments/README.md)

* [get](docs/sdks/departments/README.md#get) - Get a department
* [update](docs/sdks/departments/README.md#update) - Update a department
* [delete](docs/sdks/departments/README.md#delete) - Delete a department
* [add_people](docs/sdks/departments/README.md#add_people) - Add people to a department
* [remove_people](docs/sdks/departments/README.md#remove_people) - Remove people from a department
* [get_all](docs/sdks/departments/README.md#get_all) - Get all departments of a company
* [create](docs/sdks/departments/README.md#create) - Create a department

### [EarningTypes](docs/sdks/earningtypes/README.md)

* [list](docs/sdks/earningtypes/README.md#list) - Get all earning types for a company
* [create](docs/sdks/earningtypes/README.md#create) - Create a custom earning type
* [update](docs/sdks/earningtypes/README.md#update) - Update an earning type
* [delete](docs/sdks/earningtypes/README.md#delete) - Deactivate an earning type

### [EmployeeAddresses](docs/sdks/employeeaddresses/README.md)

* [get](docs/sdks/employeeaddresses/README.md#get) - Get an employee's home addresses
* [create](docs/sdks/employeeaddresses/README.md#create) - Create an employee's home address
* [retrieve_home_address](docs/sdks/employeeaddresses/README.md#retrieve_home_address) - Get an employee's home address
* [update](docs/sdks/employeeaddresses/README.md#update) - Update an employee's home address
* [delete](docs/sdks/employeeaddresses/README.md#delete) - Delete an employee's home address
* [get_work_addresses](docs/sdks/employeeaddresses/README.md#get_work_addresses) - Get an employee's work addresses
* [create_work_address](docs/sdks/employeeaddresses/README.md#create_work_address) - Create an employee work address
* [retrieve_work_address](docs/sdks/employeeaddresses/README.md#retrieve_work_address) - Get an employee work address
* [update_work_address](docs/sdks/employeeaddresses/README.md#update_work_address) - Update an employee work address
* [delete_work_address](docs/sdks/employeeaddresses/README.md#delete_work_address) - Delete an employee's work address

### [EmployeeBenefits](docs/sdks/employeebenefits/README.md)

* [get](docs/sdks/employeebenefits/README.md#get) - Get all benefits for an employee
* [create](docs/sdks/employeebenefits/README.md#create) - Create an employee benefit
* [retrieve](docs/sdks/employeebenefits/README.md#retrieve) - Get an employee benefit
* [update](docs/sdks/employeebenefits/README.md#update) - Update an employee benefit
* [delete](docs/sdks/employeebenefits/README.md#delete) - Delete an employee benefit
* [get_ytd_benefit_amounts_from_different_company](docs/sdks/employeebenefits/README.md#get_ytd_benefit_amounts_from_different_company) - Get year-to-date benefit amounts from a different company
* [create_ytd_benefit_amounts_from_different_company](docs/sdks/employeebenefits/README.md#create_ytd_benefit_amounts_from_different_company) - Create year-to-date benefit amounts from a different company
* [get_v1_employees_employee_uuid_section603_high_earner_statuses](docs/sdks/employeebenefits/README.md#get_v1_employees_employee_uuid_section603_high_earner_statuses) - Get all Section 603 high earner statuses for an employee
* [post_v1_employees_employee_uuid_section603_high_earner_statuses](docs/sdks/employeebenefits/README.md#post_v1_employees_employee_uuid_section603_high_earner_statuses) - Create a Section 603 high earner status
* [get_v1_employees_employee_uuid_section603_high_earner_statuses_effective_year](docs/sdks/employeebenefits/README.md#get_v1_employees_employee_uuid_section603_high_earner_statuses_effective_year) - Get a Section 603 high earner status for a specific year
* [patch_v1_employees_employee_uuid_section603_high_earner_statuses_effective_year](docs/sdks/employeebenefits/README.md#patch_v1_employees_employee_uuid_section603_high_earner_statuses_effective_year) - Update a Section 603 high earner status

### [EmployeeEmployments](docs/sdks/employeeemployments/README.md)

* [get_rehire](docs/sdks/employeeemployments/README.md#get_rehire) - Get an employee rehire
* [create_rehire](docs/sdks/employeeemployments/README.md#create_rehire) - Create an employee rehire
* [rehire](docs/sdks/employeeemployments/README.md#rehire) - Update an employee rehire
* [delete_rehire](docs/sdks/employeeemployments/README.md#delete_rehire) - Delete an employee rehire
* [get_history](docs/sdks/employeeemployments/README.md#get_history) - Get employment history for an employee
* [get_terminations](docs/sdks/employeeemployments/README.md#get_terminations) - Get terminations for an employee
* [create_termination](docs/sdks/employeeemployments/README.md#create_termination) - Create an employee termination
* [delete_termination](docs/sdks/employeeemployments/README.md#delete_termination) - Delete an employee termination
* [update_termination](docs/sdks/employeeemployments/README.md#update_termination) - Update an employee termination
* [get_v1_terminations_employee_id](docs/sdks/employeeemployments/README.md#get_v1_terminations_employee_id) - Get an employee termination

### [EmployeeForms](docs/sdks/employeeforms/README.md)

* [list](docs/sdks/employeeforms/README.md#list) - Get all employee forms
* [get](docs/sdks/employeeforms/README.md#get) - Get an employee form
* [get_pdf](docs/sdks/employeeforms/README.md#get_pdf) - Get the employee form pdf
* [sign](docs/sdks/employeeforms/README.md#sign) - Sign an employee form
* [generate_w2](docs/sdks/employeeforms/README.md#generate_w2) - Generate a W2 form [DEMO]

### [EmployeePaymentMethod](docs/sdks/employeepaymentmethod/README.md)

* [create](docs/sdks/employeepaymentmethod/README.md#create) - Create an employee bank account
* [update_bank_account](docs/sdks/employeepaymentmethod/README.md#update_bank_account) - Update an employee bank account
* [delete_bank_account](docs/sdks/employeepaymentmethod/README.md#delete_bank_account) - Delete an employee bank account
* [get](docs/sdks/employeepaymentmethod/README.md#get) - Get payment method for an employee
* [update](docs/sdks/employeepaymentmethod/README.md#update) - Update payment method for an employee

### [EmployeePaymentMethods](docs/sdks/employeepaymentmethods/README.md)

* [get_bank_accounts](docs/sdks/employeepaymentmethods/README.md#get_bank_accounts) - List employee bank accounts

### [Employees](docs/sdks/employees/README.md)

* [get_custom_fields](docs/sdks/employees/README.md#get_custom_fields) - Get an employee's custom fields
* [get_v1_companies_company_id_employees_payment_details](docs/sdks/employees/README.md#get_v1_companies_company_id_employees_payment_details) - Get employee payment details for a company
* [get_time_off_activities](docs/sdks/employees/README.md#get_time_off_activities) - Get employee time off activities
* [get](docs/sdks/employees/README.md#get) - Get an employee
* [update](docs/sdks/employees/README.md#update) - Update an employee.
* [delete](docs/sdks/employees/README.md#delete) - Delete an onboarding employee
* [list](docs/sdks/employees/README.md#list) - Get employees of a company
* [create](docs/sdks/employees/README.md#create) - Create an employee
* [get_onboarding_status](docs/sdks/employees/README.md#get_onboarding_status) - Get the employee's onboarding status
* [update_onboarding_status](docs/sdks/employees/README.md#update_onboarding_status) - Update the employee's onboarding status
* [update_onboarding_documents_config](docs/sdks/employees/README.md#update_onboarding_documents_config) - Update employee onboarding documents config
* [create_historical](docs/sdks/employees/README.md#create_historical) - Create a historical employee

### [EmployeeTaxSetup](docs/sdks/employeetaxsetup/README.md)

* [get_federal_taxes](docs/sdks/employeetaxsetup/README.md#get_federal_taxes) - Get federal taxes for an employee
* [update_federal_taxes](docs/sdks/employeetaxsetup/README.md#update_federal_taxes) - Update federal taxes for an employee
* [get_state_taxes](docs/sdks/employeetaxsetup/README.md#get_state_taxes) - Get an employee's state taxes
* [update_state_taxes](docs/sdks/employeetaxsetup/README.md#update_state_taxes) - Update an employee's state taxes

### [Events](docs/sdks/events/README.md)

* [get](docs/sdks/events/README.md#get) - Get all events

### [ExternalPayrolls](docs/sdks/externalpayrolls/README.md)

* [get](docs/sdks/externalpayrolls/README.md#get) - Get external payrolls for a company
* [create](docs/sdks/externalpayrolls/README.md#create) - Create an external payroll for a company
* [list_tax_liabilities](docs/sdks/externalpayrolls/README.md#list_tax_liabilities) - Get tax liabilities
* [update_tax_liabilities](docs/sdks/externalpayrolls/README.md#update_tax_liabilities) - Update tax liabilities
* [finalize_tax_liabilities](docs/sdks/externalpayrolls/README.md#finalize_tax_liabilities) - Finalize tax liabilities options and convert into processed payrolls
* [retrieve](docs/sdks/externalpayrolls/README.md#retrieve) - Get an external payroll
* [update](docs/sdks/externalpayrolls/README.md#update) - Update an external payroll
* [delete](docs/sdks/externalpayrolls/README.md#delete) - Delete an external payroll
* [calculate_taxes](docs/sdks/externalpayrolls/README.md#calculate_taxes) - Get tax suggestions for an external payroll

### [FederalTaxDetails](docs/sdks/federaltaxdetails/README.md)

* [get](docs/sdks/federaltaxdetails/README.md#get) - Get a company's federal tax details
* [update](docs/sdks/federaltaxdetails/README.md#update) - Update a company's federal tax details

### [Flows](docs/sdks/flows/README.md)

* [create](docs/sdks/flows/README.md#create) - Create a flow

### [Garnishments](docs/sdks/garnishments/README.md)

* [list](docs/sdks/garnishments/README.md#list) - Get garnishments for an employee
* [create](docs/sdks/garnishments/README.md#create) - Create a garnishment
* [get_child_support_data](docs/sdks/garnishments/README.md#get_child_support_data) - Get child support garnishment data
* [get](docs/sdks/garnishments/README.md#get) - Get a garnishment
* [update](docs/sdks/garnishments/README.md#update) - Update a garnishment

### [GeneratedDocuments](docs/sdks/generateddocuments/README.md)

* [get](docs/sdks/generateddocuments/README.md#get) - Get a generated document

### [HistoricalEmployees](docs/sdks/historicalemployees/README.md)

* [update](docs/sdks/historicalemployees/README.md#update) - Update a historical employee

### [HolidayPayPolicies](docs/sdks/holidaypaypolicies/README.md)

* [get](docs/sdks/holidaypaypolicies/README.md#get) - Get a company's holiday pay policy
* [create](docs/sdks/holidaypaypolicies/README.md#create) - Create a holiday pay policy for a company
* [update](docs/sdks/holidaypaypolicies/README.md#update) - Update a company's holiday pay policy
* [delete](docs/sdks/holidaypaypolicies/README.md#delete) - Delete a company's holiday pay policy
* [add_employees](docs/sdks/holidaypaypolicies/README.md#add_employees) - Add employees to a company's holiday pay policy
* [remove_employees](docs/sdks/holidaypaypolicies/README.md#remove_employees) - Remove employees from a company's holiday pay policy
* [preview_paid_holidays](docs/sdks/holidaypaypolicies/README.md#preview_paid_holidays) - Preview a company's paid holidays

### [I9Verification](docs/sdks/i9verification/README.md)

* [get_authorization](docs/sdks/i9verification/README.md#get_authorization) - Get an employee's I-9 authorization
* [update](docs/sdks/i9verification/README.md#update) - Create or update an employee's I-9 authorization
* [get_document_options](docs/sdks/i9verification/README.md#get_document_options) - Get an employee's I-9 verification document options
* [get_documents](docs/sdks/i9verification/README.md#get_documents) - Get an employee's I-9 verification documents
* [create_documents](docs/sdks/i9verification/README.md#create_documents) - Create an employee's I-9 authorization verification documents
* [delete_document](docs/sdks/i9verification/README.md#delete_document) - Delete an employee's I-9 verification document
* [employer_sign](docs/sdks/i9verification/README.md#employer_sign) - Employer sign an employee's Form I-9

### [IndustrySelection](docs/sdks/industryselection/README.md)

* [get](docs/sdks/industryselection/README.md#get) - Get a company industry selection
* [update](docs/sdks/industryselection/README.md#update) - Update a company industry selection

### [InformationRequests](docs/sdks/informationrequests/README.md)

* [get_information_requests](docs/sdks/informationrequests/README.md#get_information_requests) - Get all information requests for a company
* [submit](docs/sdks/informationrequests/README.md#submit) - Submit information request responses

### [Introspection](docs/sdks/introspection/README.md)

* [oauth_access_token](docs/sdks/introspection/README.md#oauth_access_token) - Create a System Access Token or Refresh an Access Token
* [get_info](docs/sdks/introspection/README.md#get_info) - Get info about the current access token

### [Invoices](docs/sdks/invoices/README.md)

* [get](docs/sdks/invoices/README.md#get) - Retrieve invoicing data for companies

### [JobsAndCompensations](docs/sdks/jobsandcompensations/README.md)

* [get_compensations](docs/sdks/jobsandcompensations/README.md#get_compensations) - Get compensations for a job
* [create_compensation](docs/sdks/jobsandcompensations/README.md#create_compensation) - Create a compensation
* [get_compensation](docs/sdks/jobsandcompensations/README.md#get_compensation) - Get a compensation
* [update_compensation](docs/sdks/jobsandcompensations/README.md#update_compensation) - Update a compensation
* [delete_compensation](docs/sdks/jobsandcompensations/README.md#delete_compensation) - Delete a compensation
* [get_job](docs/sdks/jobsandcompensations/README.md#get_job) - Get a job
* [update](docs/sdks/jobsandcompensations/README.md#update) - Update a job
* [delete](docs/sdks/jobsandcompensations/README.md#delete) - Delete an individual job
* [get_jobs](docs/sdks/jobsandcompensations/README.md#get_jobs) - Get jobs for an employee
* [create_job](docs/sdks/jobsandcompensations/README.md#create_job) - Create a job

### [Locations](docs/sdks/locations/README.md)

* [get_minimum_wages](docs/sdks/locations/README.md#get_minimum_wages) - Get minimum wages for a location
* [retrieve](docs/sdks/locations/README.md#retrieve) - Get a location
* [update](docs/sdks/locations/README.md#update) - Update a location
* [get](docs/sdks/locations/README.md#get) - Get all company locations
* [create](docs/sdks/locations/README.md#create) - Create a company location

### [Notifications](docs/sdks/notifications/README.md)

* [get_company_notifications](docs/sdks/notifications/README.md#get_company_notifications) - Get notifications for company
* [get_details](docs/sdks/notifications/README.md#get_details) - Get a notification's details

### [PaymentConfigs](docs/sdks/paymentconfigs/README.md)

* [get](docs/sdks/paymentconfigs/README.md#get) - Get a company's payment configs
* [update](docs/sdks/paymentconfigs/README.md#update) - Update a company's payment configs

### [PayrollDigests](docs/sdks/payrolldigests/README.md)

* [post_v1_payroll_digests](docs/sdks/payrolldigests/README.md#post_v1_payroll_digests) - Create a payroll digest batch
* [get_v1_payroll_digests_payroll_digest_uuid](docs/sdks/payrolldigests/README.md#get_v1_payroll_digests_payroll_digest_uuid) - Get a payroll digest batch

### [Payrolls](docs/sdks/payrolls/README.md)

* [generate_printable_checks](docs/sdks/payrolls/README.md#generate_printable_checks) - Generate printable payroll checks (pdf)
* [get_pay_stubs](docs/sdks/payrolls/README.md#get_pay_stubs) - Get an employee's pay stubs
* [get_pay_stub](docs/sdks/payrolls/README.md#get_pay_stub) - Get an employee pay stub (pdf)
* [get_v1_companies_company_id_payrolls_id_partner_disbursements](docs/sdks/payrolls/README.md#get_v1_companies_company_id_payrolls_id_partner_disbursements) - Get partner disbursements for a payroll
* [patch_v1_companies_company_id_payrolls_id_partner_disbursements](docs/sdks/payrolls/README.md#patch_v1_companies_company_id_payrolls_id_partner_disbursements) - Update partner disbursements for a payroll
* [get_approved_reversals](docs/sdks/payrolls/README.md#get_approved_reversals) - Get approved payroll reversals
* [get](docs/sdks/payrolls/README.md#get) - Get a single payroll
* [update](docs/sdks/payrolls/README.md#update) - Update a payroll by ID
* [delete](docs/sdks/payrolls/README.md#delete) - Delete a payroll
* [list](docs/sdks/payrolls/README.md#list) - Get all payrolls for a company
* [create_off_cycle](docs/sdks/payrolls/README.md#create_off_cycle) - Create an off-cycle payroll
* [get_receipt](docs/sdks/payrolls/README.md#get_receipt) - Get a single payroll receipt
* [cancel](docs/sdks/payrolls/README.md#cancel) - Cancel a payroll
* [prepare](docs/sdks/payrolls/README.md#prepare) - Prepare a payroll for update
* [calculate](docs/sdks/payrolls/README.md#calculate) - Calculate a payroll
* [get_blockers](docs/sdks/payrolls/README.md#get_blockers) - Get all payroll blockers for a company
* [skip](docs/sdks/payrolls/README.md#skip) - Skip a payroll
* [submit](docs/sdks/payrolls/README.md#submit) - Submit payroll
* [calculate_gross_up](docs/sdks/payrolls/README.md#calculate_gross_up) - Calculate gross up for a payroll

### [PaySchedules](docs/sdks/payschedules/README.md)

* [get_pay_periods](docs/sdks/payschedules/README.md#get_pay_periods) - Get pay periods for a company
* [get_unprocessed_termination_periods](docs/sdks/payschedules/README.md#get_unprocessed_termination_periods) - Get termination pay periods for a company
* [get_all](docs/sdks/payschedules/README.md#get_all) - Get the pay schedules for a company
* [create](docs/sdks/payschedules/README.md#create) - Create a new pay schedule
* [get_preview](docs/sdks/payschedules/README.md#get_preview) - Preview pay schedule dates
* [get](docs/sdks/payschedules/README.md#get) - Get a pay schedule
* [update](docs/sdks/payschedules/README.md#update) - Update a pay schedule
* [preview_assignment](docs/sdks/payschedules/README.md#preview_assignment) - Preview pay schedule assignments for a company
* [assign](docs/sdks/payschedules/README.md#assign) - Assign pay schedules for a company
* [get_assignments](docs/sdks/payschedules/README.md#get_assignments) - Get pay schedule assignments for a company

### [PeopleBatches](docs/sdks/peoplebatches/README.md)

* [post_v1_companies_company_id_people_batches](docs/sdks/peoplebatches/README.md#post_v1_companies_company_id_people_batches) - Create a people batch
* [get_v1_people_batches_people_batch_uuid](docs/sdks/peoplebatches/README.md#get_v1_people_batches_people_batch_uuid) - Get a people batch

### [RecoveryCases](docs/sdks/recoverycases/README.md)

* [get](docs/sdks/recoverycases/README.md#get) - Get all recovery cases for a company
* [redebit](docs/sdks/recoverycases/README.md#redebit) - Initiate a redebit for a recovery case

### [Reimbursements](docs/sdks/reimbursements/README.md)

* [get_v1_employees_employee_id_recurring_reimbursements](docs/sdks/reimbursements/README.md#get_v1_employees_employee_id_recurring_reimbursements) - Get recurring reimbursements for an employee
* [post_v1_employees_employee_id_recurring_reimbursements](docs/sdks/reimbursements/README.md#post_v1_employees_employee_id_recurring_reimbursements) - Create a recurring reimbursement
* [get_v1_recurring_reimbursements](docs/sdks/reimbursements/README.md#get_v1_recurring_reimbursements) - Get a recurring reimbursement
* [put_v1_recurring_reimbursements](docs/sdks/reimbursements/README.md#put_v1_recurring_reimbursements) - Update a recurring reimbursement
* [delete_v1_recurring_reimbursements](docs/sdks/reimbursements/README.md#delete_v1_recurring_reimbursements) - Delete a recurring reimbursement

### [Reports](docs/sdks/reports/README.md)

* [post_v1_companies_company_id_reports_employees_annual_fica_wage](docs/sdks/reports/README.md#post_v1_companies_company_id_reports_employees_annual_fica_wage) - Create an employees annual FICA wage report
* [create_custom](docs/sdks/reports/README.md#create_custom) - Create a custom report
* [post_payrolls_payroll_uuid_reports_general_ledger](docs/sdks/reports/README.md#post_payrolls_payroll_uuid_reports_general_ledger) - Create a general ledger report
* [get_reports_request_uuid](docs/sdks/reports/README.md#get_reports_request_uuid) - Get a report
* [get_template](docs/sdks/reports/README.md#get_template) - Get a report template

### [SalaryEstimates](docs/sdks/salaryestimates/README.md)

* [post_v1_employees_employee_id_salary_estimates](docs/sdks/salaryestimates/README.md#post_v1_employees_employee_id_salary_estimates) - Create a salary estimate for an employee
* [get_v1_salary_estimates_id](docs/sdks/salaryestimates/README.md#get_v1_salary_estimates_id) - Get a salary estimate
* [put_v1_salary_estimates_id](docs/sdks/salaryestimates/README.md#put_v1_salary_estimates_id) - Update a salary estimate
* [post_v1_salary_estimates_uuid_accept](docs/sdks/salaryestimates/README.md#post_v1_salary_estimates_uuid_accept) - Accept a salary estimate
* [get_v1_salary_estimates_occupations](docs/sdks/salaryestimates/README.md#get_v1_salary_estimates_occupations) - Search for BLS occupations

### [Signatories](docs/sdks/signatories/README.md)

* [list](docs/sdks/signatories/README.md#list) - Get the signatories for a company
* [create](docs/sdks/signatories/README.md#create) - Create a signatory
* [invite](docs/sdks/signatories/README.md#invite) - Invite a signatory
* [update](docs/sdks/signatories/README.md#update) - Update a signatory
* [delete](docs/sdks/signatories/README.md#delete) - Delete a signatory

### [TaxRequirements](docs/sdks/taxrequirements/README.md)

* [get_all](docs/sdks/taxrequirements/README.md#get_all) - Get all tax requirements for a company
* [get](docs/sdks/taxrequirements/README.md#get) - Get tax requirements for a state
* [update_state](docs/sdks/taxrequirements/README.md#update_state) - Update tax requirements for a state

### [TimeOffRequests](docs/sdks/timeoffrequests/README.md)

* [post_v1_companies_company_uuid_time_off_admin_approved_requests](docs/sdks/timeoffrequests/README.md#post_v1_companies_company_uuid_time_off_admin_approved_requests) - Create an admin-approved time off request
* [get_v1_companies_company_uuid_time_off_balances](docs/sdks/timeoffrequests/README.md#get_v1_companies_company_uuid_time_off_balances) - Get time off balances for a company
* [get_v1_companies_company_uuid_time_off_requests](docs/sdks/timeoffrequests/README.md#get_v1_companies_company_uuid_time_off_requests) - List time off requests for a company
* [post_v1_companies_company_uuid_time_off_requests](docs/sdks/timeoffrequests/README.md#post_v1_companies_company_uuid_time_off_requests) - Create a time off request
* [post_v1_companies_company_uuid_time_off_requests_preview](docs/sdks/timeoffrequests/README.md#post_v1_companies_company_uuid_time_off_requests_preview) - Preview a time off request
* [get_v1_time_off_requests_time_off_request_uuid](docs/sdks/timeoffrequests/README.md#get_v1_time_off_requests_time_off_request_uuid) - Get a time off request
* [delete_v1_time_off_requests_time_off_request_uuid](docs/sdks/timeoffrequests/README.md#delete_v1_time_off_requests_time_off_request_uuid) - Delete a time off request
* [put_v1_time_off_requests_time_off_request_uuid_approve](docs/sdks/timeoffrequests/README.md#put_v1_time_off_requests_time_off_request_uuid_approve) - Approve a time off request
* [put_v1_time_off_requests_time_off_request_uuid_decline](docs/sdks/timeoffrequests/README.md#put_v1_time_off_requests_time_off_request_uuid_decline) - Decline a time off request

### [TimeOffPolicies](docs/sdks/timeoffpolicies/README.md)

* [calculate_accruing_time_off_hours](docs/sdks/timeoffpolicies/README.md#calculate_accruing_time_off_hours) - Calculate accruing time off hours
* [get_all](docs/sdks/timeoffpolicies/README.md#get_all) - Get all time off policies for a company
* [create](docs/sdks/timeoffpolicies/README.md#create) - Create a time off policy
* [get](docs/sdks/timeoffpolicies/README.md#get) - Get a time off policy
* [update](docs/sdks/timeoffpolicies/README.md#update) - Update a time off policy
* [deactivate](docs/sdks/timeoffpolicies/README.md#deactivate) - Deactivate a time off policy
* [add_employees](docs/sdks/timeoffpolicies/README.md#add_employees) - Add employees to a time off policy
* [remove_employees](docs/sdks/timeoffpolicies/README.md#remove_employees) - Remove employees from a time off policy
* [update_balance](docs/sdks/timeoffpolicies/README.md#update_balance) - Update employee time off balances

### [Webhooks](docs/sdks/webhooks/README.md)

* [list_subscriptions](docs/sdks/webhooks/README.md#list_subscriptions) - List webhook subscriptions
* [create_subscription](docs/sdks/webhooks/README.md#create_subscription) - Create a webhook subscription
* [get_subscription](docs/sdks/webhooks/README.md#get_subscription) - Get a webhook subscription
* [update_subscription](docs/sdks/webhooks/README.md#update_subscription) - Update a webhook subscription
* [delete_subscription](docs/sdks/webhooks/README.md#delete_subscription) - Delete a webhook subscription
* [request_verification_token](docs/sdks/webhooks/README.md#request_verification_token) - Request a verification token for a webhook subscription
* [verify](docs/sdks/webhooks/README.md#verify) - Verify a webhook subscription
* [get_v1_webhooks_health_check](docs/sdks/webhooks/README.md#get_v1_webhooks_health_check) - Get the webhooks health status

### [WireInRequests](docs/sdks/wireinrequests/README.md)

* [get](docs/sdks/wireinrequests/README.md#get) - Get a single Wire In Request
* [submit](docs/sdks/wireinrequests/README.md#submit) - Submit a wire in request
* [list](docs/sdks/wireinrequests/README.md#list) - Get all Wire In Requests for a company

</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Error Handling [errors] -->
## Error Handling

Handling errors in this SDK should largely match your expectations. All operations return a response object or raise an error.

By default an API error will raise a `Errors::APIError`, which has the following properties:

| Property       | Type                                    | Description           |
|----------------|-----------------------------------------|-----------------------|
| `message`     | *string*                                 | The error message     |
| `status_code`  | *int*                                   | The HTTP status code  |
| `raw_response` | *Faraday::Response*                     | The raw HTTP response |
| `body`        | *string*                                 | The response content  |

When custom error responses are specified for an operation, the SDK may also throw their associated exception. You can refer to respective *Errors* tables in SDK docs for more details on possible exception types for each operation. For example, the `get_all` method throws the following exceptions:

| Error Type                          | Status Code | Content Type     |
| ----------------------------------- | ----------- | ---------------- |
| Models::Errors::NotFoundErrorObject | 404         | application/json |
| Errors::APIError                    | 4XX, 5XX    | \*/\*            |

### Example

```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)

begin
    req = Models::Operations::GetAchTransactionsRequest.new(
      company_uuid: '<id>'
    )
    res = s.ach_transactions.get_all(request: req)

    unless res.ach_transaction_list.nil?
      # handle response
    end
rescue Models::Errors::NotFoundErrorObject => e
  # handle e.container data
  raise e
rescue Errors::APIError => e
  # handle default exception
  raise e
end

```
<!-- End Error Handling [errors] -->

<!-- Start Server Selection [server] -->
## Server Selection

### Select Server by Name

You can override the default server globally by passing a server name to the `server (Symbol)` optional parameter when initializing the SDK client instance. The selected server will then be used as the default on the operations that use it. This table lists the names associated with the available servers:

| Name   | Server                       | Description |
| ------ | ---------------------------- | ----------- |
| `demo` | `https://api.gusto-demo.com` | Demo        |
| `prod` | `https://api.gusto.com`      | Prod        |

#### Example

```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  server: "demo",
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)

req = Models::Operations::GetAchTransactionsRequest.new(
  company_uuid: '<id>'
)
res = s.ach_transactions.get_all(request: req)

unless res.ach_transaction_list.nil?
  # handle response
end

```

### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url (String)` optional parameter when initializing the SDK client instance. For example:
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  server_url: 'https://api.gusto-demo.com',
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)

req = Models::Operations::GetAchTransactionsRequest.new(
  company_uuid: '<id>'
)
res = s.ach_transactions.get_all(request: req)

unless res.ach_transaction_list.nil?
  # handle response
end

```
<!-- End Server Selection [server] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically. Any manual changes added to internal files will be overwritten on the next generation. 
We look forward to hearing your feedback. Feel free to open a PR or an issue with a proof of concept and we'll do our best to include it in a future release. 

### SDK Created by [Speakeasy](https://www.speakeasy.com/?utm_source=gusto-embedded-client-v-2026-06-15&utm_campaign=ruby)
