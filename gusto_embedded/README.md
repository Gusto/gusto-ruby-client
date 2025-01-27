# gusto

Developer-friendly & type-safe Ruby SDK specifically catered to leverage *gusto* API.

<div align="left">
    <a href="https://www.speakeasy.com/?utm_source=gusto&utm_campaign=ruby"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
    </a>
</div>


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
* [gusto](#gusto)
  * [SDK Installation](#sdk-installation)
  * [SDK Example Usage](#sdk-example-usage)
  * [Available Resources and Operations](#available-resources-and-operations)
  * [Server Selection](#server-selection)
* [Development](#development)
  * [Maturity](#maturity)
  * [Contributions](#contributions)

<!-- End Table of Contents [toc] -->

<!-- Start SDK Installation [installation] -->
## SDK Installation

The SDK can be installed using [RubyGems](https://rubygems.org/):

```bash
gem install specific_install
gem specific_install  
```
<!-- End SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.introspection.get_token_info(x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.object.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [accept_terms](docs/sdks/acceptterms/README.md)

* [create](docs/sdks/acceptterms/README.md#create) - Accept terms of service for a company user

### [ach_transactions](docs/sdks/achtransactions/README.md)

* [get_all](docs/sdks/achtransactions/README.md#get_all) - Get all ACH transactions for a company

### [admins](docs/sdks/admins/README.md)

* [list](docs/sdks/admins/README.md#list) - Get all the admins at a company

### [attachments](docs/sdks/attachments/README.md)

* [list](docs/sdks/attachments/README.md#list) - Get List of Company Attachments

### [bank_accounts](docs/sdks/bankaccounts/README.md)

* [create_company_account](docs/sdks/bankaccounts/README.md#create_company_account) - Create a company bank account
* [get_all](docs/sdks/bankaccounts/README.md#get_all) - Get all company bank accounts
* [verify](docs/sdks/bankaccounts/README.md#verify) - Verify a company bank account
* [delete](docs/sdks/bankaccounts/README.md#delete) - Delete an employee bank account
* [create_from_plaid_token](docs/sdks/bankaccounts/README.md#create_from_plaid_token) - Create a bank account from a plaid processor token

### [companies](docs/sdks/companies/README.md)

* [create_partner_managed](docs/sdks/companies/README.md#create_partner_managed) - Create a partner managed company
* [get](docs/sdks/companies/README.md#get) - Get a company
* [update](docs/sdks/companies/README.md#update) - Update a company
* [migrate_partner_managed](docs/sdks/companies/README.md#migrate_partner_managed) - Migrate company to embedded payroll
* [retrieve_terms_of_service](docs/sdks/companies/README.md#retrieve_terms_of_service) - Retrieve terms of service status for a company user
* [create_admin](docs/sdks/companies/README.md#create_admin) - Create an admin for the company
* [get_onboarding_status](docs/sdks/companies/README.md#get_onboarding_status) - Get the company's onboarding status
* [finish_onboarding](docs/sdks/companies/README.md#finish_onboarding) - Finish company onboarding
* [get_custom_fields](docs/sdks/companies/README.md#get_custom_fields) - Get the custom fields of a company

### [company_attachment](docs/sdks/companyattachment/README.md)

* [get_details](docs/sdks/companyattachment/README.md#get_details) - Get Company Attachment Details

### [company_attachments](docs/sdks/companyattachments/README.md)

* [get_download_url](docs/sdks/companyattachments/README.md#get_download_url) - Get a temporary url to download the Company Attachment file
* [create](docs/sdks/companyattachments/README.md#create) - Create Company Attachment and Upload File

### [company_benefits](docs/sdks/companybenefits/README.md)

* [create](docs/sdks/companybenefits/README.md#create) - Create a company benefit
* [list_for_company](docs/sdks/companybenefits/README.md#list_for_company) - Get benefits for a company
* [get](docs/sdks/companybenefits/README.md#get) - Get a company benefit
* [update](docs/sdks/companybenefits/README.md#update) - Update a company benefit
* [delete](docs/sdks/companybenefits/README.md#delete) - Delete a company benefit
* [list_supported](docs/sdks/companybenefits/README.md#list_supported) - Get all benefits supported by Gusto
* [get_benefit_by_id](docs/sdks/companybenefits/README.md#get_benefit_by_id) - Get a supported benefit by ID
* [get_summary](docs/sdks/companybenefits/README.md#get_summary) - Get company benefit summary by company benefit id.
* [get_employee_benefits](docs/sdks/companybenefits/README.md#get_employee_benefits) - Get all employee benefits for a company benefit
* [bulk_update_employee_benefits](docs/sdks/companybenefits/README.md#bulk_update_employee_benefits) - Bulk update employee benefits for a company benefit
* [get_requirements](docs/sdks/companybenefits/README.md#get_requirements) - Get benefit fields requirements by ID

### [company_forms](docs/sdks/companyforms/README.md)

* [list](docs/sdks/companyforms/README.md#list) - Get all company forms
* [get_pdf](docs/sdks/companyforms/README.md#get_pdf) - Get a company form pdf
* [sign](docs/sdks/companyforms/README.md#sign) - Sign a company form

### [compensations](docs/sdks/compensations/README.md)

* [update](docs/sdks/compensations/README.md#update) - Update a compensation

### [contractor_documents](docs/sdks/contractordocuments/README.md)

* [list](docs/sdks/contractordocuments/README.md#list) - Get all contractor documents
* [get](docs/sdks/contractordocuments/README.md#get) - Get a contractor document
* [get_pdf](docs/sdks/contractordocuments/README.md#get_pdf) - Get the contractor document pdf
* [sign](docs/sdks/contractordocuments/README.md#sign) - Sign a contractor document

### [contractor_forms](docs/sdks/contractorforms/README.md)

* [get_all](docs/sdks/contractorforms/README.md#get_all) - Get all contractor forms
* [get](docs/sdks/contractorforms/README.md#get) - Get a contractor form
* [get_pdf](docs/sdks/contractorforms/README.md#get_pdf) - Get the contractor form pdf
* [generate1099](docs/sdks/contractorforms/README.md#generate1099) - Generate a 1099 form [DEMO]

### [contractor_payment_groups](docs/sdks/contractorpaymentgroups/README.md)

* [create](docs/sdks/contractorpaymentgroups/README.md#create) - Create a contractor payment group
* [get](docs/sdks/contractorpaymentgroups/README.md#get) - Get contractor payment groups for a company
* [preview](docs/sdks/contractorpaymentgroups/README.md#preview) - Preview a contractor payment group
* [get_by_uuid](docs/sdks/contractorpaymentgroups/README.md#get_by_uuid) - Fetch a contractor payment group
* [delete](docs/sdks/contractorpaymentgroups/README.md#delete) - Cancel a contractor payment group
* [fund](docs/sdks/contractorpaymentgroups/README.md#fund) - Fund a contractor payment group [DEMO]

### [contractor_payment_method](docs/sdks/contractorpaymentmethod/README.md)

* [create](docs/sdks/contractorpaymentmethod/README.md#create) - Create a contractor bank account
* [get_bank_accounts](docs/sdks/contractorpaymentmethod/README.md#get_bank_accounts) - Get all contractor bank accounts
* [get](docs/sdks/contractorpaymentmethod/README.md#get) - Get a contractor's payment method
* [update](docs/sdks/contractorpaymentmethod/README.md#update) - Update a contractor's payment method

### [contractor_payments](docs/sdks/contractorpayments/README.md)

* [get_receipt](docs/sdks/contractorpayments/README.md#get_receipt) - Get a single contractor payment receipt
* [fund](docs/sdks/contractorpayments/README.md#fund) - Fund a contractor payment [DEMO]
* [create](docs/sdks/contractorpayments/README.md#create) - Create a contractor payment
* [get](docs/sdks/contractorpayments/README.md#get) - Get contractor payments for a company
* [get_by_company](docs/sdks/contractorpayments/README.md#get_by_company) - Get a single contractor payment
* [delete](docs/sdks/contractorpayments/README.md#delete) - Cancel a contractor payment
* [preview](docs/sdks/contractorpayments/README.md#preview) - Preview contractor payment debit date

### [contractors](docs/sdks/contractors/README.md)

* [create](docs/sdks/contractors/README.md#create) - Create a contractor
* [get](docs/sdks/contractors/README.md#get) - Get contractors of a company
* [get_by_uuid](docs/sdks/contractors/README.md#get_by_uuid) - Get a contractor
* [update](docs/sdks/contractors/README.md#update) - Update a contractor
* [delete](docs/sdks/contractors/README.md#delete) - Delete a contractor
* [get_onboarding_status](docs/sdks/contractors/README.md#get_onboarding_status) - Get the contractor's onboarding status
* [update_onboarding_status](docs/sdks/contractors/README.md#update_onboarding_status) - Change the contractor's onboarding status
* [get_address](docs/sdks/contractors/README.md#get_address) - Get a contractor address
* [update_address](docs/sdks/contractors/README.md#update_address) - Update a contractor's address

### [custom_fields](docs/sdks/customfields/README.md)

* [list](docs/sdks/customfields/README.md#list) - Get an employee's custom fields

### [departments](docs/sdks/departments/README.md)

* [create](docs/sdks/departments/README.md#create) - Create a department
* [get_all](docs/sdks/departments/README.md#get_all) - Get all departments of a company
* [get](docs/sdks/departments/README.md#get) - Get a department
* [update](docs/sdks/departments/README.md#update) - Update a department
* [delete](docs/sdks/departments/README.md#delete) - Delete a department
* [add_people](docs/sdks/departments/README.md#add_people) - Add people to a department
* [remove_people](docs/sdks/departments/README.md#remove_people) - Remove people from a department

### [earning_types](docs/sdks/earningtypes/README.md)

* [create](docs/sdks/earningtypes/README.md#create) - Create a custom earning type
* [get_all](docs/sdks/earningtypes/README.md#get_all) - Get all earning types for a company
* [update_earning_type](docs/sdks/earningtypes/README.md#update_earning_type) - Update an earning type
* [deactivate](docs/sdks/earningtypes/README.md#deactivate) - Deactivate an earning type

### [employee_addresses](docs/sdks/employeeaddresses/README.md)

* [get_all](docs/sdks/employeeaddresses/README.md#get_all) - Get an employee's home addresses
* [add_home_address](docs/sdks/employeeaddresses/README.md#add_home_address) - Create an employee's home address
* [get](docs/sdks/employeeaddresses/README.md#get) - Get an employee's home address
* [update_home_address](docs/sdks/employeeaddresses/README.md#update_home_address) - Update an employee's home address
* [delete_home_address](docs/sdks/employeeaddresses/README.md#delete_home_address) - Delete an employee's home address
* [list_work_addresses](docs/sdks/employeeaddresses/README.md#list_work_addresses) - Get an employee's work addresses
* [create](docs/sdks/employeeaddresses/README.md#create) - Create an employee work address
* [get_work_address](docs/sdks/employeeaddresses/README.md#get_work_address) - Get an employee work address
* [update](docs/sdks/employeeaddresses/README.md#update) - Update an employee work address
* [delete](docs/sdks/employeeaddresses/README.md#delete) - Delete an employee's work address

### [employee_benefits](docs/sdks/employeebenefits/README.md)

* [create](docs/sdks/employeebenefits/README.md#create) - Create an employee benefit
* [get_all](docs/sdks/employeebenefits/README.md#get_all) - Get all benefits for an employee
* [get](docs/sdks/employeebenefits/README.md#get) - Get an employee benefit
* [update](docs/sdks/employeebenefits/README.md#update) - Update an employee benefit
* [delete](docs/sdks/employeebenefits/README.md#delete) - Delete an employee benefit
* [create_ytd_amounts](docs/sdks/employeebenefits/README.md#create_ytd_amounts) - Create year-to-date benefit amounts from a different company

### [employee_employments](docs/sdks/employeeemployments/README.md)

* [create_termination](docs/sdks/employeeemployments/README.md#create_termination) - Create an employee termination
* [list_terminations](docs/sdks/employeeemployments/README.md#list_terminations) - Get terminations for an employee
* [delete_termination](docs/sdks/employeeemployments/README.md#delete_termination) - Delete an employee termination
* [update_termination](docs/sdks/employeeemployments/README.md#update_termination) - Update an employee termination
* [rehire](docs/sdks/employeeemployments/README.md#rehire) - Create an employee rehire
* [update_rehire](docs/sdks/employeeemployments/README.md#update_rehire) - Update an employee rehire
* [get_rehire](docs/sdks/employeeemployments/README.md#get_rehire) - Get an employee rehire
* [delete_rehire](docs/sdks/employeeemployments/README.md#delete_rehire) - Delete an employee rehire

### [employee_forms](docs/sdks/employeeforms/README.md)

* [generate_w2](docs/sdks/employeeforms/README.md#generate_w2) - Generate a W2 form [DEMO]
* [list_by_employee_id](docs/sdks/employeeforms/README.md#list_by_employee_id) - Get all employee forms
* [get](docs/sdks/employeeforms/README.md#get) - Get an employee form
* [get_pdf](docs/sdks/employeeforms/README.md#get_pdf) - Get the employee form pdf
* [sign](docs/sdks/employeeforms/README.md#sign) - Sign an employee form

### [employee_payment_method](docs/sdks/employeepaymentmethod/README.md)

* [create_bank_account](docs/sdks/employeepaymentmethod/README.md#create_bank_account) - Create an employee bank account
* [get_bank_accounts](docs/sdks/employeepaymentmethod/README.md#get_bank_accounts) - Get all employee bank accounts
* [update_bank_account](docs/sdks/employeepaymentmethod/README.md#update_bank_account) - Update an employee bank account
* [update](docs/sdks/employeepaymentmethod/README.md#update) - Update an employee's payment method

### [employee_payment_methods](docs/sdks/employeepaymentmethods/README.md)

* [get](docs/sdks/employeepaymentmethods/README.md#get) - Get an employee's payment method

### [employee_tax_setup](docs/sdks/employeetaxsetup/README.md)

* [get_federal_taxes](docs/sdks/employeetaxsetup/README.md#get_federal_taxes) - Get an employee's federal taxes
* [update_federal_taxes](docs/sdks/employeetaxsetup/README.md#update_federal_taxes) - Update an employee's federal taxes
* [get_state_taxes](docs/sdks/employeetaxsetup/README.md#get_state_taxes) - Get an employee's state taxes
* [update_state_taxes](docs/sdks/employeetaxsetup/README.md#update_state_taxes) - Update an employee's state taxes

### [employees](docs/sdks/employees/README.md)

* [create](docs/sdks/employees/README.md#create) - Create an employee
* [list_by_company](docs/sdks/employees/README.md#list_by_company) - Get employees of a company
* [create_historical](docs/sdks/employees/README.md#create_historical) - Create a historical employee
* [update_historical_employee](docs/sdks/employees/README.md#update_historical_employee) - Update a historical employee
* [get](docs/sdks/employees/README.md#get) - Get an employee
* [update](docs/sdks/employees/README.md#update) - Update an employee
* [delete](docs/sdks/employees/README.md#delete) - Delete an onboarding employee
* [update_onboarding_documents_config](docs/sdks/employees/README.md#update_onboarding_documents_config) - Update an employee's onboarding documents config
* [get_onboarding_status](docs/sdks/employees/README.md#get_onboarding_status) - Get the employee's onboarding status
* [update_onboarding_status](docs/sdks/employees/README.md#update_onboarding_status) - Update the employee's onboarding status
* [get_time_off_activities](docs/sdks/employees/README.md#get_time_off_activities) - Get employee time off activities

### [employment_history](docs/sdks/employmenthistory/README.md)

* [list](docs/sdks/employmenthistory/README.md#list) - Get employment history for an employee

### [events](docs/sdks/events/README.md)

* [list](docs/sdks/events/README.md#list) - Get all events

### [external_payrolls](docs/sdks/externalpayrolls/README.md)

* [create](docs/sdks/externalpayrolls/README.md#create) - Create a new external payroll for a company
* [list_by_company](docs/sdks/externalpayrolls/README.md#list_by_company) - Get external payrolls for a company
* [get](docs/sdks/externalpayrolls/README.md#get) - Get an external payroll
* [delete](docs/sdks/externalpayrolls/README.md#delete) - Delete an external payroll
* [update](docs/sdks/externalpayrolls/README.md#update) - Update an external payroll
* [calculate_taxes](docs/sdks/externalpayrolls/README.md#calculate_taxes) - Get tax suggestions for an external payroll
* [get_tax_liabilities](docs/sdks/externalpayrolls/README.md#get_tax_liabilities) - Get tax liabilities
* [update_tax_liabilities](docs/sdks/externalpayrolls/README.md#update_tax_liabilities) - Update tax liabilities
* [finalize_tax_liabilities](docs/sdks/externalpayrolls/README.md#finalize_tax_liabilities) - Finalize tax liabilities options and convert into processed payrolls

### [federal_tax_details](docs/sdks/federaltaxdetails/README.md)

* [get](docs/sdks/federaltaxdetails/README.md#get) - Get Federal Tax Details
* [update](docs/sdks/federaltaxdetails/README.md#update) - Update Federal Tax Details

### [flows](docs/sdks/flows/README.md)

* [create](docs/sdks/flows/README.md#create) - Create a flow

### [forms](docs/sdks/forms/README.md)

* [get](docs/sdks/forms/README.md#get) - Get a company form

### [garnishments](docs/sdks/garnishments/README.md)

* [create](docs/sdks/garnishments/README.md#create) - Create a garnishment
* [get](docs/sdks/garnishments/README.md#get) - Get garnishments for an employee
* [get_by_id](docs/sdks/garnishments/README.md#get_by_id) - Get a garnishment
* [update](docs/sdks/garnishments/README.md#update) - Update a garnishment
* [get_child_support_data](docs/sdks/garnishments/README.md#get_child_support_data) - Get child support garnishment data

### [generated_documents](docs/sdks/generateddocuments/README.md)

* [get](docs/sdks/generateddocuments/README.md#get) - Get a generated document


### [holiday_pay_policies](docs/sdks/holidaypaypolicies/README.md)

* [get](docs/sdks/holidaypaypolicies/README.md#get) - Get a company's holiday pay policy
* [create](docs/sdks/holidaypaypolicies/README.md#create) - Create a holiday pay policy for a company
* [update](docs/sdks/holidaypaypolicies/README.md#update) - Update a company's holiday pay policy
* [delete](docs/sdks/holidaypaypolicies/README.md#delete) - Delete a company's holiday pay policy
* [add_employees](docs/sdks/holidaypaypolicies/README.md#add_employees) - Add employees to a company's holiday pay policy
* [remove_employees](docs/sdks/holidaypaypolicies/README.md#remove_employees) - Remove employees from a company's holiday pay policy
* [preview_by_company](docs/sdks/holidaypaypolicies/README.md#preview_by_company) - Preview a company's paid holidays

### [i9_verification](docs/sdks/i9verification/README.md)

* [create_or_update](docs/sdks/i9verification/README.md#create_or_update) - Create or update an employee's I-9 authorization
* [get_document_options](docs/sdks/i9verification/README.md#get_document_options) - Get an employee's I-9 verification document options
* [get_documents](docs/sdks/i9verification/README.md#get_documents) - Get an employee's I-9 verification documents
* [update_documents](docs/sdks/i9verification/README.md#update_documents) - Create an employee's I-9 authorization verification documents
* [delete_document](docs/sdks/i9verification/README.md#delete_document) - Delete an employee's I-9 verification document
* [employer_sign](docs/sdks/i9verification/README.md#employer_sign) - Employer sign an employee's Form I-9

### [i9_verifications](docs/sdks/i9verifications/README.md)

* [get_authorization](docs/sdks/i9verifications/README.md#get_authorization) - Get an employee's I-9 authorization

### [industry_selection](docs/sdks/industryselection/README.md)

* [get](docs/sdks/industryselection/README.md#get) - Get a company industry selection
* [update](docs/sdks/industryselection/README.md#update) - Update a company industry selection

### [introspection](docs/sdks/introspection/README.md)

* [get_token_info](docs/sdks/introspection/README.md#get_token_info) - Get info about the current access token
* [refresh_access_token](docs/sdks/introspection/README.md#refresh_access_token) - Refresh access token

### [invoices](docs/sdks/invoices/README.md)

* [get](docs/sdks/invoices/README.md#get) - Retrieve invoicing data for companies

### [jobs_and_compensations](docs/sdks/jobsandcompensations/README.md)

* [create_job](docs/sdks/jobsandcompensations/README.md#create_job) - Create a job
* [get_jobs](docs/sdks/jobsandcompensations/README.md#get_jobs) - Get jobs for an employee
* [get_job](docs/sdks/jobsandcompensations/README.md#get_job) - Get a job
* [update_job](docs/sdks/jobsandcompensations/README.md#update_job) - Update a job
* [delete_job](docs/sdks/jobsandcompensations/README.md#delete_job) - Delete an individual job
* [get_compensations](docs/sdks/jobsandcompensations/README.md#get_compensations) - Get compensations for a job
* [create_compensation](docs/sdks/jobsandcompensations/README.md#create_compensation) - Create a compensation
* [get](docs/sdks/jobsandcompensations/README.md#get) - Get a compensation
* [delete_compensation](docs/sdks/jobsandcompensations/README.md#delete_compensation) - Delete a compensation

### [locations](docs/sdks/locations/README.md)

* [create](docs/sdks/locations/README.md#create) - Create a company location
* [get_company_locations](docs/sdks/locations/README.md#get_company_locations) - Get company locations
* [get](docs/sdks/locations/README.md#get) - Get a location
* [update](docs/sdks/locations/README.md#update) - Update a location
* [get_minimum_wages](docs/sdks/locations/README.md#get_minimum_wages) - Get minimum wages for a location

### [notifications](docs/sdks/notifications/README.md)

* [get](docs/sdks/notifications/README.md#get) - Get a notification's details

### [pay_schedules](docs/sdks/payschedules/README.md)

* [create](docs/sdks/payschedules/README.md#create) - Create a new pay schedule
* [list_by_company](docs/sdks/payschedules/README.md#list_by_company) - Get the pay schedules for a company
* [preview](docs/sdks/payschedules/README.md#preview) - Preview pay schedule dates
* [get](docs/sdks/payschedules/README.md#get) - Get a pay schedule
* [update](docs/sdks/payschedules/README.md#update) - Update a pay schedule
* [list](docs/sdks/payschedules/README.md#list) - Get pay periods for a company
* [get_unprocessed_termination_pay_periods](docs/sdks/payschedules/README.md#get_unprocessed_termination_pay_periods) - Get termination pay periods for a company
* [get_assignments](docs/sdks/payschedules/README.md#get_assignments) - Get pay schedule assignments for a company
* [preview_assignment](docs/sdks/payschedules/README.md#preview_assignment) - Preview pay schedule assignments for a company
* [assign](docs/sdks/payschedules/README.md#assign) - Assign pay schedules for a company

### [payment_configs](docs/sdks/paymentconfigs/README.md)

* [get](docs/sdks/paymentconfigs/README.md#get) - Get a company's payment configs
* [update](docs/sdks/paymentconfigs/README.md#update) - Update a company's payment configs

### [payrolls](docs/sdks/payrolls/README.md)

* [create_off_cycle](docs/sdks/payrolls/README.md#create_off_cycle) - Create an off-cycle payroll
* [get_all](docs/sdks/payrolls/README.md#get_all) - Get all payrolls for a company
* [get_payroll_reversals](docs/sdks/payrolls/README.md#get_payroll_reversals) - Get approved payroll reversals
* [get](docs/sdks/payrolls/README.md#get) - Get a single payroll
* [update](docs/sdks/payrolls/README.md#update) - Update a payroll by ID
* [delete](docs/sdks/payrolls/README.md#delete) - Delete a payroll
* [prepare](docs/sdks/payrolls/README.md#prepare) - Prepare a payroll for update
* [get_receipt](docs/sdks/payrolls/README.md#get_receipt) - Get a single payroll receipt
* [get_blockers](docs/sdks/payrolls/README.md#get_blockers) - Get all payroll blockers for a company
* [skip](docs/sdks/payrolls/README.md#skip) - Skip a payroll
* [gross_up](docs/sdks/payrolls/README.md#gross_up) - Calculate gross up
* [calculate](docs/sdks/payrolls/README.md#calculate) - Calculate a payroll
* [submit](docs/sdks/payrolls/README.md#submit) - Submit payroll
* [cancel](docs/sdks/payrolls/README.md#cancel) - Cancel a payroll
* [get_pay_stub](docs/sdks/payrolls/README.md#get_pay_stub) - Get an employee pay stub (pdf)
* [get_pay_stubs](docs/sdks/payrolls/README.md#get_pay_stubs) - Get an employee's pay stubs
* [generate_printable_payroll_checks](docs/sdks/payrolls/README.md#generate_printable_payroll_checks) - Generate printable payroll checks (pdf)

### [recovery_cases](docs/sdks/recoverycases/README.md)

* [get](docs/sdks/recoverycases/README.md#get) - Get all recovery cases for a company
* [initiate_redeibit](docs/sdks/recoverycases/README.md#initiate_redeibit) - Initiate a redebit for a recovery case

### [reports](docs/sdks/reports/README.md)

* [create_company_report](docs/sdks/reports/README.md#create_company_report) - Create a custom report
* [get](docs/sdks/reports/README.md#get) - Get a report
* [get_template](docs/sdks/reports/README.md#get_template) - Get a report template

### [signatories](docs/sdks/signatories/README.md)

* [create](docs/sdks/signatories/README.md#create) - Create a signatory
* [get](docs/sdks/signatories/README.md#get) - Get all company signatories
* [invite](docs/sdks/signatories/README.md#invite) - Invite a signatory
* [update](docs/sdks/signatories/README.md#update) - Update a signatory
* [delete](docs/sdks/signatories/README.md#delete) - Delete a signatory

### [tax_requirements](docs/sdks/taxrequirements/README.md)

* [get_state_requirements](docs/sdks/taxrequirements/README.md#get_state_requirements) - Get State Tax Requirements
* [update_state](docs/sdks/taxrequirements/README.md#update_state) - Update State Tax Requirements
* [get_all](docs/sdks/taxrequirements/README.md#get_all) - Get All Tax Requirement States

### [time_off_policies](docs/sdks/timeoffpolicies/README.md)

* [calculate_accruing_hours](docs/sdks/timeoffpolicies/README.md#calculate_accruing_hours) - Calculate accruing time off hours
* [get](docs/sdks/timeoffpolicies/README.md#get) - Get a time off policy
* [update](docs/sdks/timeoffpolicies/README.md#update) - Update a time off policy
* [get_all](docs/sdks/timeoffpolicies/README.md#get_all) - Get all time off policies
* [create](docs/sdks/timeoffpolicies/README.md#create) - Create a time off policy
* [add_employees](docs/sdks/timeoffpolicies/README.md#add_employees) - Add employees to a time off policy
* [remove_employees](docs/sdks/timeoffpolicies/README.md#remove_employees) - Remove employees from a time off policy
* [update_balance](docs/sdks/timeoffpolicies/README.md#update_balance) - Update employee time off hour balances
* [deactivate](docs/sdks/timeoffpolicies/README.md#deactivate) - Deactivate a time off policy

### [webhooks](docs/sdks/webhooks/README.md)

* [create](docs/sdks/webhooks/README.md#create) - Create a webhook subscription
* [list_subscriptions](docs/sdks/webhooks/README.md#list_subscriptions) - List webhook subscriptions
* [update_subscription](docs/sdks/webhooks/README.md#update_subscription) - Update a webhook subscription
* [get_subscription](docs/sdks/webhooks/README.md#get_subscription) - Get a webhook subscription
* [delete](docs/sdks/webhooks/README.md#delete) - Delete a webhook subscription
* [verify](docs/sdks/webhooks/README.md#verify) - Verify the webhook subscription
* [request_verification_token](docs/sdks/webhooks/README.md#request_verification_token) - Request the webhook subscription verification_token

### [wire_in_requests](docs/sdks/wireinrequests/README.md)

* [get](docs/sdks/wireinrequests/README.md#get) - Get a single Wire In Request
* [submit](docs/sdks/wireinrequests/README.md#submit) - Submit a wire in request
* [list_for_company](docs/sdks/wireinrequests/README.md#list_for_company) - Get all Wire In Requests for a company

</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Server Selection [server] -->
## Server Selection

### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url (String)` optional parameter when initializing the SDK client instance. For example:
```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new(
      server_url: "https://api.gusto-demo.com",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.introspection.get_token_info(x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.object.nil?
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

### SDK Created by [Speakeasy](https://www.speakeasy.com/?utm_source=gusto&utm_campaign=ruby)
