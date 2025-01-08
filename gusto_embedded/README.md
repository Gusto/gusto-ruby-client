# gusto_embedded

Developer-friendly & type-safe Ruby SDK specifically catered to leverage *gusto_embedded* API.

<div align="left">
    <a href="https://www.speakeasy.com/?utm_source=gusto-embedded&utm_campaign=ruby"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
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
* [gusto_embedded](#gustoembedded)
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
require 'gusto_embedded'


s = ::OpenApiSDK::GustoEmbedded.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.introspection.get(x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.object.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [ach_transactions](docs/sdks/achtransactions/README.md)

* [get_all](docs/sdks/achtransactions/README.md#get_all) - Get all ACH transactions for a company

### [bank_accounts](docs/sdks/bankaccounts/README.md)

* [create](docs/sdks/bankaccounts/README.md#create) - Create a company bank account
* [list](docs/sdks/bankaccounts/README.md#list) - Get all company bank accounts
* [verify](docs/sdks/bankaccounts/README.md#verify) - Verify a company bank account
* [create_from_plaid_token](docs/sdks/bankaccounts/README.md#create_from_plaid_token) - Create a bank account from a plaid processor token

### [companies](docs/sdks/companies/README.md)

* [create_partner_managed](docs/sdks/companies/README.md#create_partner_managed) - Create a partner managed company
* [get](docs/sdks/companies/README.md#get) - Get a company
* [update](docs/sdks/companies/README.md#update) - Update a company
* [migrate](docs/sdks/companies/README.md#migrate) - Migrate company to embedded payroll
* [accept_terms_of_service](docs/sdks/companies/README.md#accept_terms_of_service) - Accept terms of service for a company user
* [retrieve_terms_of_service](docs/sdks/companies/README.md#retrieve_terms_of_service) - Retrieve terms of service status for a company user
* [create_admin](docs/sdks/companies/README.md#create_admin) - Create an admin for the company
* [get_admins](docs/sdks/companies/README.md#get_admins) - Get all the admins at a company
* [get_onboarding_status](docs/sdks/companies/README.md#get_onboarding_status) - Get the company's onboarding status
* [finish_onboarding](docs/sdks/companies/README.md#finish_onboarding) - Finish company onboarding
* [get_custom_fields](docs/sdks/companies/README.md#get_custom_fields) - Get the custom fields of a company

### [companies_contractors](docs/sdks/companiescontractors/README.md)

* [list](docs/sdks/companiescontractors/README.md#list) - Get contractors of a company

### [company_attachment](docs/sdks/companyattachment/README.md)

* [get](docs/sdks/companyattachment/README.md#get) - Get Company Attachment Details

### [company_attachments](docs/sdks/companyattachments/README.md)

* [get_download_url](docs/sdks/companyattachments/README.md#get_download_url) - Get a temporary url to download the Company Attachment file
* [list](docs/sdks/companyattachments/README.md#list) - Get List of Company Attachments
* [create_and_upload](docs/sdks/companyattachments/README.md#create_and_upload) - Create Company Attachment and Upload File

### [company_benefits](docs/sdks/companybenefits/README.md)

* [create](docs/sdks/companybenefits/README.md#create) - Create a company benefit
* [list](docs/sdks/companybenefits/README.md#list) - Get benefits for a company
* [get_by_id](docs/sdks/companybenefits/README.md#get_by_id) - Get a company benefit
* [update](docs/sdks/companybenefits/README.md#update) - Update a company benefit
* [delete](docs/sdks/companybenefits/README.md#delete) - Delete a company benefit
* [get_all_supported](docs/sdks/companybenefits/README.md#get_all_supported) - Get all benefits supported by Gusto
* [get](docs/sdks/companybenefits/README.md#get) - Get a supported benefit by ID
* [get_summary](docs/sdks/companybenefits/README.md#get_summary) - Get company benefit summary by company benefit id.
* [get_employee_benefits](docs/sdks/companybenefits/README.md#get_employee_benefits) - Get all employee benefits for a company benefit
* [bulk_update](docs/sdks/companybenefits/README.md#bulk_update) - Bulk update employee benefits for a company benefit
* [get_requirements](docs/sdks/companybenefits/README.md#get_requirements) - Get benefit fields requirements by ID

### [company_forms](docs/sdks/companyforms/README.md)

* [get_all](docs/sdks/companyforms/README.md#get_all) - Get all company forms
* [get](docs/sdks/companyforms/README.md#get) - Get a company form
* [get_pdf](docs/sdks/companyforms/README.md#get_pdf) - Get a company form pdf
* [sign](docs/sdks/companyforms/README.md#sign) - Sign a company form

### [contractor_documents](docs/sdks/contractordocuments/README.md)

* [list](docs/sdks/contractordocuments/README.md#list) - Get all contractor documents
* [get](docs/sdks/contractordocuments/README.md#get) - Get a contractor document
* [get_pdf](docs/sdks/contractordocuments/README.md#get_pdf) - Get the contractor document pdf
* [sign](docs/sdks/contractordocuments/README.md#sign) - Sign a contractor document

### [contractor_forms](docs/sdks/contractorforms/README.md)

* [get](docs/sdks/contractorforms/README.md#get) - Get all contractor forms
* [get_by_id](docs/sdks/contractorforms/README.md#get_by_id) - Get a contractor form
* [get_pdf](docs/sdks/contractorforms/README.md#get_pdf) - Get the contractor form pdf
* [generate1099](docs/sdks/contractorforms/README.md#generate1099) - Generate a 1099 form [DEMO]

### [contractor_payment_groups](docs/sdks/contractorpaymentgroups/README.md)

* [create](docs/sdks/contractorpaymentgroups/README.md#create) - Create a contractor payment group
* [list](docs/sdks/contractorpaymentgroups/README.md#list) - Get contractor payment groups for a company
* [preview](docs/sdks/contractorpaymentgroups/README.md#preview) - Preview a contractor payment group
* [fetch](docs/sdks/contractorpaymentgroups/README.md#fetch) - Fetch a contractor payment group
* [cancel](docs/sdks/contractorpaymentgroups/README.md#cancel) - Cancel a contractor payment group
* [fund](docs/sdks/contractorpaymentgroups/README.md#fund) - Fund a contractor payment group [DEMO]

### [contractor_payment_method](docs/sdks/contractorpaymentmethod/README.md)

* [create_bank_account](docs/sdks/contractorpaymentmethod/README.md#create_bank_account) - Create a contractor bank account
* [get](docs/sdks/contractorpaymentmethod/README.md#get) - Get a contractor's payment method
* [update](docs/sdks/contractorpaymentmethod/README.md#update) - Update a contractor's payment method

### [contractor_payment_methods](docs/sdks/contractorpaymentmethods/README.md)

* [get_all](docs/sdks/contractorpaymentmethods/README.md#get_all) - Get all contractor bank accounts

### [contractor_payments](docs/sdks/contractorpayments/README.md)

* [get_receipt](docs/sdks/contractorpayments/README.md#get_receipt) - Get a single contractor payment receipt
* [fund](docs/sdks/contractorpayments/README.md#fund) - Fund a contractor payment [DEMO]
* [create](docs/sdks/contractorpayments/README.md#create) - Create a contractor payment
* [get](docs/sdks/contractorpayments/README.md#get) - Get contractor payments for a company
* [get_by_id](docs/sdks/contractorpayments/README.md#get_by_id) - Get a single contractor payment
* [delete](docs/sdks/contractorpayments/README.md#delete) - Cancel a contractor payment
* [preview](docs/sdks/contractorpayments/README.md#preview) - Preview contractor payment debit date

### [contractors](docs/sdks/contractors/README.md)

* [create](docs/sdks/contractors/README.md#create) - Create a contractor
* [get](docs/sdks/contractors/README.md#get) - Get a contractor
* [update](docs/sdks/contractors/README.md#update) - Update a contractor
* [delete](docs/sdks/contractors/README.md#delete) - Delete a contractor
* [get_onboarding_status](docs/sdks/contractors/README.md#get_onboarding_status) - Get the contractor's onboarding status
* [update_onboarding_status](docs/sdks/contractors/README.md#update_onboarding_status) - Change the contractor's onboarding status
* [get_address](docs/sdks/contractors/README.md#get_address) - Get a contractor address
* [update_address](docs/sdks/contractors/README.md#update_address) - Update a contractor's address

### [departments](docs/sdks/departments/README.md)

* [create](docs/sdks/departments/README.md#create) - Create a department
* [list](docs/sdks/departments/README.md#list) - Get all departments of a company
* [get](docs/sdks/departments/README.md#get) - Get a department
* [update](docs/sdks/departments/README.md#update) - Update a department
* [delete](docs/sdks/departments/README.md#delete) - Delete a department
* [add_people](docs/sdks/departments/README.md#add_people) - Add people to a department
* [remove_people](docs/sdks/departments/README.md#remove_people) - Remove people from a department

### [earning_types](docs/sdks/earningtypes/README.md)

* [create](docs/sdks/earningtypes/README.md#create) - Create a custom earning type
* [get_all](docs/sdks/earningtypes/README.md#get_all) - Get all earning types for a company
* [update](docs/sdks/earningtypes/README.md#update) - Update an earning type
* [delete](docs/sdks/earningtypes/README.md#delete) - Deactivate an earning type

### [employee_addresses](docs/sdks/employeeaddresses/README.md)

* [get](docs/sdks/employeeaddresses/README.md#get) - Get an employee's home addresses
* [create_home_address](docs/sdks/employeeaddresses/README.md#create_home_address) - Create an employee's home address
* [get_home_by_id](docs/sdks/employeeaddresses/README.md#get_home_by_id) - Get an employee's home address
* [update](docs/sdks/employeeaddresses/README.md#update) - Update an employee's home address
* [delete](docs/sdks/employeeaddresses/README.md#delete) - Delete an employee's home address
* [get_work_addresses](docs/sdks/employeeaddresses/README.md#get_work_addresses) - Get an employee's work addresses
* [create_work_address](docs/sdks/employeeaddresses/README.md#create_work_address) - Create an employee work address
* [get_work_address](docs/sdks/employeeaddresses/README.md#get_work_address) - Get an employee work address
* [update_work_address](docs/sdks/employeeaddresses/README.md#update_work_address) - Update an employee work address
* [remove](docs/sdks/employeeaddresses/README.md#remove) - Delete an employee's work address

### [employee_benefits](docs/sdks/employeebenefits/README.md)

* [create](docs/sdks/employeebenefits/README.md#create) - Create an employee benefit
* [get_all](docs/sdks/employeebenefits/README.md#get_all) - Get all benefits for an employee
* [get](docs/sdks/employeebenefits/README.md#get) - Get an employee benefit
* [update](docs/sdks/employeebenefits/README.md#update) - Update an employee benefit
* [delete](docs/sdks/employeebenefits/README.md#delete) - Delete an employee benefit
* [create_ytd_benefit_amounts_from_different_company](docs/sdks/employeebenefits/README.md#create_ytd_benefit_amounts_from_different_company) - Create year-to-date benefit amounts from a different company

### [employee_employments](docs/sdks/employeeemployments/README.md)

* [create_termination](docs/sdks/employeeemployments/README.md#create_termination) - Create an employee termination
* [get_termination](docs/sdks/employeeemployments/README.md#get_termination) - Get terminations for an employee
* [delete_termination](docs/sdks/employeeemployments/README.md#delete_termination) - Delete an employee termination
* [update_termination](docs/sdks/employeeemployments/README.md#update_termination) - Update an employee termination
* [create_rehire](docs/sdks/employeeemployments/README.md#create_rehire) - Create an employee rehire
* [rehire](docs/sdks/employeeemployments/README.md#rehire) - Update an employee rehire
* [get_rehire](docs/sdks/employeeemployments/README.md#get_rehire) - Get an employee rehire
* [delete_rehire](docs/sdks/employeeemployments/README.md#delete_rehire) - Delete an employee rehire
* [get_history](docs/sdks/employeeemployments/README.md#get_history) - Get employment history for an employee

### [employee_forms](docs/sdks/employeeforms/README.md)

* [generate_w2](docs/sdks/employeeforms/README.md#generate_w2) - Generate a W2 form [DEMO]
* [get](docs/sdks/employeeforms/README.md#get) - Get all employee forms
* [get_by_id](docs/sdks/employeeforms/README.md#get_by_id) - Get an employee form
* [get_pdf](docs/sdks/employeeforms/README.md#get_pdf) - Get the employee form pdf
* [sign](docs/sdks/employeeforms/README.md#sign) - Sign an employee form

### [employee_payment_method](docs/sdks/employeepaymentmethod/README.md)

* [create_bank_account](docs/sdks/employeepaymentmethod/README.md#create_bank_account) - Create an employee bank account
* [update_bank_account](docs/sdks/employeepaymentmethod/README.md#update_bank_account) - Update an employee bank account
* [get](docs/sdks/employeepaymentmethod/README.md#get) - Get an employee's payment method

### [employee_payment_methods](docs/sdks/employeepaymentmethods/README.md)

* [get_all](docs/sdks/employeepaymentmethods/README.md#get_all) - Get all employee bank accounts
* [delete](docs/sdks/employeepaymentmethods/README.md#delete) - Delete an employee bank account
* [update](docs/sdks/employeepaymentmethods/README.md#update) - Update an employee's payment method

### [employee_tax_setup](docs/sdks/employeetaxsetup/README.md)

* [get_federal_taxes](docs/sdks/employeetaxsetup/README.md#get_federal_taxes) - Get an employee's federal taxes
* [update_federal_taxes](docs/sdks/employeetaxsetup/README.md#update_federal_taxes) - Update an employee's federal taxes
* [get_state_taxes](docs/sdks/employeetaxsetup/README.md#get_state_taxes) - Get an employee's state taxes
* [update_state_taxes](docs/sdks/employeetaxsetup/README.md#update_state_taxes) - Update an employee's state taxes

### [employees](docs/sdks/employees/README.md)

* [create](docs/sdks/employees/README.md#create) - Create an employee
* [list](docs/sdks/employees/README.md#list) - Get employees of a company
* [create_historical](docs/sdks/employees/README.md#create_historical) - Create a historical employee
* [update_historical](docs/sdks/employees/README.md#update_historical) - Update a historical employee
* [get](docs/sdks/employees/README.md#get) - Get an employee
* [update](docs/sdks/employees/README.md#update) - Update an employee
* [delete](docs/sdks/employees/README.md#delete) - Delete an onboarding employee
* [get_custom_fields](docs/sdks/employees/README.md#get_custom_fields) - Get an employee's custom fields
* [get_onboarding_status](docs/sdks/employees/README.md#get_onboarding_status) - Get the employee's onboarding status
* [update_onboarding_status](docs/sdks/employees/README.md#update_onboarding_status) - Update the employee's onboarding status
* [get_time_off_activities](docs/sdks/employees/README.md#get_time_off_activities) - Get employee time off activities

### [events](docs/sdks/events/README.md)

* [get_all](docs/sdks/events/README.md#get_all) - Get all events

### [external_payrolls](docs/sdks/externalpayrolls/README.md)

* [create](docs/sdks/externalpayrolls/README.md#create) - Create a new external payroll for a company
* [list](docs/sdks/externalpayrolls/README.md#list) - Get external payrolls for a company
* [get](docs/sdks/externalpayrolls/README.md#get) - Get an external payroll
* [delete](docs/sdks/externalpayrolls/README.md#delete) - Delete an external payroll
* [update](docs/sdks/externalpayrolls/README.md#update) - Update an external payroll
* [calculate_taxes](docs/sdks/externalpayrolls/README.md#calculate_taxes) - Get tax suggestions for an external payroll
* [get_tax_liabilities](docs/sdks/externalpayrolls/README.md#get_tax_liabilities) - Get tax liabilities
* [update_tax_liabilities](docs/sdks/externalpayrolls/README.md#update_tax_liabilities) - Update tax liabilities
* [finish_tax_liabilities](docs/sdks/externalpayrolls/README.md#finish_tax_liabilities) - Finalize tax liabilities options and convert into processed payrolls

### [federal_tax_details](docs/sdks/federaltaxdetails/README.md)

* [get](docs/sdks/federaltaxdetails/README.md#get) - Get Federal Tax Details
* [update](docs/sdks/federaltaxdetails/README.md#update) - Update Federal Tax Details

### [flows](docs/sdks/flows/README.md)

* [create](docs/sdks/flows/README.md#create) - Create a flow

### [garnishments](docs/sdks/garnishments/README.md)

* [create](docs/sdks/garnishments/README.md#create) - Create a garnishment
* [list_by_employee](docs/sdks/garnishments/README.md#list_by_employee) - Get garnishments for an employee
* [get](docs/sdks/garnishments/README.md#get) - Get a garnishment
* [update](docs/sdks/garnishments/README.md#update) - Update a garnishment
* [get_child_support](docs/sdks/garnishments/README.md#get_child_support) - Get child support garnishment data

### [generated_documents](docs/sdks/generateddocuments/README.md)

* [get](docs/sdks/generateddocuments/README.md#get) - Get a generated document


### [holiday_pay_policies](docs/sdks/holidaypaypolicies/README.md)

* [get](docs/sdks/holidaypaypolicies/README.md#get) - Get a company's holiday pay policy
* [create](docs/sdks/holidaypaypolicies/README.md#create) - Create a holiday pay policy for a company
* [update](docs/sdks/holidaypaypolicies/README.md#update) - Update a company's holiday pay policy
* [delete](docs/sdks/holidaypaypolicies/README.md#delete) - Delete a company's holiday pay policy
* [add_employees](docs/sdks/holidaypaypolicies/README.md#add_employees) - Add employees to a company's holiday pay policy
* [remove_employees](docs/sdks/holidaypaypolicies/README.md#remove_employees) - Remove employees from a company's holiday pay policy
* [get_paid_holidays](docs/sdks/holidaypaypolicies/README.md#get_paid_holidays) - Preview a company's paid holidays

### [industry_selection](docs/sdks/industryselection/README.md)

* [get](docs/sdks/industryselection/README.md#get) - Get a company industry selection
* [update](docs/sdks/industryselection/README.md#update) - Update a company industry selection

### [introspection](docs/sdks/introspection/README.md)

* [get](docs/sdks/introspection/README.md#get) - Get info about the current access token
* [refresh_token](docs/sdks/introspection/README.md#refresh_token) - Refresh access token

### [invoices](docs/sdks/invoices/README.md)

* [get_period_data](docs/sdks/invoices/README.md#get_period_data) - Retrieve invoicing data for companies

### [jobs](docs/sdks/jobs/README.md)

* [update_compensation](docs/sdks/jobs/README.md#update_compensation) - Update a compensation

### [jobs_and_compensations](docs/sdks/jobsandcompensations/README.md)

* [create_job](docs/sdks/jobsandcompensations/README.md#create_job) - Create a job
* [get_jobs](docs/sdks/jobsandcompensations/README.md#get_jobs) - Get jobs for an employee
* [get](docs/sdks/jobsandcompensations/README.md#get) - Get a job
* [update](docs/sdks/jobsandcompensations/README.md#update) - Update a job
* [get_compensations](docs/sdks/jobsandcompensations/README.md#get_compensations) - Get compensations for a job
* [create_compensation](docs/sdks/jobsandcompensations/README.md#create_compensation) - Create a compensation
* [get_compensation](docs/sdks/jobsandcompensations/README.md#get_compensation) - Get a compensation

### [jobs_compensations](docs/sdks/jobscompensations/README.md)

* [delete_job](docs/sdks/jobscompensations/README.md#delete_job) - Delete an individual job
* [delete_compensation](docs/sdks/jobscompensations/README.md#delete_compensation) - Delete a compensation

### [locations](docs/sdks/locations/README.md)

* [create](docs/sdks/locations/README.md#create) - Create a company location
* [list](docs/sdks/locations/README.md#list) - Get company locations
* [get](docs/sdks/locations/README.md#get) - Get a location
* [update](docs/sdks/locations/README.md#update) - Update a location
* [get_minimum_wages](docs/sdks/locations/README.md#get_minimum_wages) - Get minimum wages for a location

### [notifications](docs/sdks/notifications/README.md)

* [get_details](docs/sdks/notifications/README.md#get_details) - Get a notification's details

### [pay_schedules](docs/sdks/payschedules/README.md)

* [create](docs/sdks/payschedules/README.md#create) - Create a new pay schedule
* [list](docs/sdks/payschedules/README.md#list) - Get the pay schedules for a company
* [preview](docs/sdks/payschedules/README.md#preview) - Preview pay schedule dates
* [get](docs/sdks/payschedules/README.md#get) - Get a pay schedule
* [update](docs/sdks/payschedules/README.md#update) - Update a pay schedule
* [list_pay_periods](docs/sdks/payschedules/README.md#list_pay_periods) - Get pay periods for a company
* [list_unprocessed_termination_pay_periods](docs/sdks/payschedules/README.md#list_unprocessed_termination_pay_periods) - Get termination pay periods for a company
* [list_assignments](docs/sdks/payschedules/README.md#list_assignments) - Get pay schedule assignments for a company
* [assignment_preview](docs/sdks/payschedules/README.md#assignment_preview) - Preview pay schedule assignments for a company
* [assign](docs/sdks/payschedules/README.md#assign) - Assign pay schedules for a company

### [payment_configs](docs/sdks/paymentconfigs/README.md)

* [get](docs/sdks/paymentconfigs/README.md#get) - Get a company's payment configs
* [update](docs/sdks/paymentconfigs/README.md#update) - Update a company's payment configs

### [payrolls](docs/sdks/payrolls/README.md)

* [create](docs/sdks/payrolls/README.md#create) - Create an off-cycle payroll
* [list](docs/sdks/payrolls/README.md#list) - Get all payrolls for a company
* [list_reversals](docs/sdks/payrolls/README.md#list_reversals) - Get approved payroll reversals
* [get](docs/sdks/payrolls/README.md#get) - Get a single payroll
* [update](docs/sdks/payrolls/README.md#update) - Update a payroll by ID
* [delete](docs/sdks/payrolls/README.md#delete) - Delete a payroll
* [prepare_for_update](docs/sdks/payrolls/README.md#prepare_for_update) - Prepare a payroll for update
* [get_receipt](docs/sdks/payrolls/README.md#get_receipt) - Get a single payroll receipt
* [get_blockers](docs/sdks/payrolls/README.md#get_blockers) - Get all payroll blockers for a company
* [skip](docs/sdks/payrolls/README.md#skip) - Skip a payroll
* [calculate_gross_up](docs/sdks/payrolls/README.md#calculate_gross_up) - Calculate gross up
* [calculate](docs/sdks/payrolls/README.md#calculate) - Calculate a payroll
* [submit](docs/sdks/payrolls/README.md#submit) - Submit payroll
* [cancel](docs/sdks/payrolls/README.md#cancel) - Cancel a payroll
* [get_employee_pay_stubs](docs/sdks/payrolls/README.md#get_employee_pay_stubs) - Get an employee's pay stubs
* [generate_printable_checks](docs/sdks/payrolls/README.md#generate_printable_checks) - Generate printable payroll checks (pdf)

### [payrolls_employees](docs/sdks/payrollsemployees/README.md)

* [get_pay_stub](docs/sdks/payrollsemployees/README.md#get_pay_stub) - Get an employee pay stub (pdf)

### [recovery_cases](docs/sdks/recoverycases/README.md)

* [get_all](docs/sdks/recoverycases/README.md#get_all) - Get all recovery cases for a company
* [initiate_redeit](docs/sdks/recoverycases/README.md#initiate_redeit) - Initiate a redebit for a recovery case

### [reports](docs/sdks/reports/README.md)

* [create_custom](docs/sdks/reports/README.md#create_custom) - Create a custom report
* [get](docs/sdks/reports/README.md#get) - Get a report
* [get_template](docs/sdks/reports/README.md#get_template) - Get a report template

### [signatories](docs/sdks/signatories/README.md)

* [create](docs/sdks/signatories/README.md#create) - Create a signatory
* [get_all](docs/sdks/signatories/README.md#get_all) - Get all company signatories
* [invite](docs/sdks/signatories/README.md#invite) - Invite a signatory
* [update](docs/sdks/signatories/README.md#update) - Update a signatory
* [delete](docs/sdks/signatories/README.md#delete) - Delete a signatory

### [tax_requirements](docs/sdks/taxrequirements/README.md)

* [get_state](docs/sdks/taxrequirements/README.md#get_state) - Get State Tax Requirements
* [update_state](docs/sdks/taxrequirements/README.md#update_state) - Update State Tax Requirements
* [get_all](docs/sdks/taxrequirements/README.md#get_all) - Get All Tax Requirement States

### [time_off_policies](docs/sdks/timeoffpolicies/README.md)

* [calculate_accruing_hours](docs/sdks/timeoffpolicies/README.md#calculate_accruing_hours) - Calculate accruing time off hours
* [get_by_id](docs/sdks/timeoffpolicies/README.md#get_by_id) - Get a time off policy
* [update](docs/sdks/timeoffpolicies/README.md#update) - Update a time off policy
* [get](docs/sdks/timeoffpolicies/README.md#get) - Get all time off policies
* [create](docs/sdks/timeoffpolicies/README.md#create) - Create a time off policy
* [add_employees](docs/sdks/timeoffpolicies/README.md#add_employees) - Add employees to a time off policy
* [remove_employees](docs/sdks/timeoffpolicies/README.md#remove_employees) - Remove employees from a time off policy
* [update_balance](docs/sdks/timeoffpolicies/README.md#update_balance) - Update employee time off hour balances
* [deactivate](docs/sdks/timeoffpolicies/README.md#deactivate) - Deactivate a time off policy

### [webhooks](docs/sdks/webhooks/README.md)

* [create](docs/sdks/webhooks/README.md#create) - Create a webhook subscription
* [list_subscriptions](docs/sdks/webhooks/README.md#list_subscriptions) - List webhook subscriptions
* [update](docs/sdks/webhooks/README.md#update) - Update a webhook subscription
* [get_subscription](docs/sdks/webhooks/README.md#get_subscription) - Get a webhook subscription
* [delete](docs/sdks/webhooks/README.md#delete) - Delete a webhook subscription
* [verify](docs/sdks/webhooks/README.md#verify) - Verify the webhook subscription
* [request_verification_token](docs/sdks/webhooks/README.md#request_verification_token) - Request the webhook subscription verification_token

### [wire_in_requests](docs/sdks/wireinrequests/README.md)

* [get](docs/sdks/wireinrequests/README.md#get) - Get a single Wire In Request
* [update](docs/sdks/wireinrequests/README.md#update) - Submit a wire in request
* [list](docs/sdks/wireinrequests/README.md#list) - Get all Wire In Requests for a company

</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Server Selection [server] -->
## Server Selection

### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url (String)` optional parameter when initializing the SDK client instance. For example:
```ruby
require 'gusto_embedded'


s = ::OpenApiSDK::GustoEmbedded.new(
      server_url: "https://api.gusto-demo.com",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.introspection.get(x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

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

### SDK Created by [Speakeasy](https://www.speakeasy.com/?utm_source=gusto-embedded&utm_campaign=ruby)
