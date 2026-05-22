## Ruby SDK Changes:
* `client.employee_tax_setup.get_state_taxes()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.[]` **Changed** (Breaking ⚠️)
    - `employee_uuid` **Changed**
    - `questions[].answers[].valid_up_to` **Changed** (Breaking ⚠️)
    - `questions[].description` **Changed** (Breaking ⚠️)
    - `questions[].is_question_for_admin_only` **Added**
    - `state` **Changed**
  *  `error.status[404]` **Added**
* `client.employee_payment_method.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `employee_bank_account_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.companies.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `compensations.fixed[].uuid` **Added**
    - `compensations.hourly[].uuid` **Added**
    - `compensations.paid_time_off[].uuid` **Added**
    - `is_high_risk_business` **Added**
    - `is_marijuana_business` **Added**
    - `locations[].inactive` **Added**
  *  `error.status[404]` **Added**
* `client.companies.update()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `compensations.fixed[].uuid` **Added**
    - `compensations.hourly[].uuid` **Added**
    - `compensations.paid_time_off[].uuid` **Added**
    - `is_high_risk_business` **Added**
    - `is_marijuana_business` **Added**
    - `locations[].inactive` **Added**
  *  `error.status[404]` **Added**
* `client.companies.migrate()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `partner_managed_company_migrate_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.wire_in_requests.list()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `page` **Added**
    - `per` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response.[]` **Changed** (Breaking ⚠️)
    - `additional_notes` **Changed** (Breaking ⚠️)
    - `amount_sent` **Changed** (Breaking ⚠️)
    - `bank_name` **Changed** (Breaking ⚠️)
    - `date_sent` **Changed** (Breaking ⚠️)
    - `payment_type` **Changed** (Breaking ⚠️)
    - `payment_uuid` **Changed** (Breaking ⚠️)
    - `status.enum(rfi)` **Removed** (Breaking ⚠️)
* `client.wire_in_requests.submit()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `wire_in_request_update_request_body` **Added** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `additional_notes` **Changed** (Breaking ⚠️)
    - `amount_sent` **Changed** (Breaking ⚠️)
    - `bank_name` **Changed** (Breaking ⚠️)
    - `date_sent` **Changed** (Breaking ⚠️)
    - `payment_type` **Changed** (Breaking ⚠️)
    - `payment_uuid` **Changed** (Breaking ⚠️)
    - `status.enum(rfi)` **Removed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.wire_in_requests.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `additional_notes` **Changed** (Breaking ⚠️)
    - `amount_sent` **Changed** (Breaking ⚠️)
    - `bank_name` **Changed** (Breaking ⚠️)
    - `date_sent` **Changed** (Breaking ⚠️)
    - `payment_type` **Changed** (Breaking ⚠️)
    - `payment_uuid` **Changed** (Breaking ⚠️)
    - `status.enum(rfi)` **Removed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.ach_transactions.get_all()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.[]` **Changed** (Breaking ⚠️)
    - `error_code` **Changed** (Breaking ⚠️)
    - `recipient_type` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.recovery_cases.redebit()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.recovery_cases.get()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `page` **Added**
    - `per` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response.[]` **Changed** (Breaking ⚠️)
    - `contractor_payment_uuids` **Changed** (Breaking ⚠️)
    - `latest_error_code` **Changed** (Breaking ⚠️)
    - `original_debit_date` **Changed** (Breaking ⚠️)
    - `payroll_uuid` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.information_requests.get_information_requests()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.[]` **Changed** (Breaking ⚠️)
    - `required_questions` **Added**
    - `type` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.events.get()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `sort_order` **Changed**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[422]` **Added**
* `client.notifications.get_details()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `actionable` **Changed**
    - `can_block_payroll` **Changed**
    - `category` **Changed**
    - `company_uuid` **Changed**
    - `due_at` **Changed** (Breaking ⚠️)
    - `message` **Changed**
    - `published_at` **Changed**
    - `resources[].entity_type` **Changed** (Breaking ⚠️)
    - `status` **Changed**
    - `title` **Changed**
  *  `error.status[404]` **Added**
* `client.holiday_pay_policies.preview_paid_holidays()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
    - `year` **Added**
  *  `response` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.holiday_pay_policies.remove_employees()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.employees` **Changed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.federal_holidays` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.holiday_pay_policies.add_employees()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.employees` **Changed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.federal_holidays` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.holiday_pay_policies.delete()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.holiday_pay_policies.update()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.federal_holidays` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.holiday_pay_policies.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `holiday_pay_policy_request` **Added**
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.federal_holidays` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.holiday_pay_policies.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `federal_holidays` **Changed** (Breaking ⚠️)
    - `status[204]` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.tax_requirements.get_all()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.[]` **Changed**
    - `default_rates_applied` **Added**
    - `ready_to_run_payroll` **Added**
    - `setup_complete` **Changed**
    - `setup_status` **Added**
    - `state` **Changed**
  *  `error.status[404]` **Added**
* `client.tax_requirements.update_state()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.requirement_sets[].key` **Changed** (Breaking ⚠️)
    - `request_body.requirement_sets[].requirements[].key` **Changed** (Breaking ⚠️)
    - `request_body.requirement_sets[].requirements[].value` **Changed** (Breaking ⚠️)
    - `request_body.requirement_sets[].state` **Changed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.tax_requirements.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.requirement_sets[].requirements[]` **Changed** (Breaking ⚠️)
    - `editable` **Added**
    - `metadata.options[].short_label` **Changed** (Breaking ⚠️)
    - `value.union(number)` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.i9verification.employer_sign()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `i9_authorization_employer_sign_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `additional_info` **Changed** (Breaking ⚠️)
    - `alt_procedure` **Changed** (Breaking ⚠️)
    - `country` **Changed** (Breaking ⚠️)
    - `document_type` **Changed** (Breaking ⚠️)
    - `expiration_date` **Changed** (Breaking ⚠️)
    - `form_uuid` **Changed** (Breaking ⚠️)
    - `has_document_number` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.i9verification.delete_document()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[422]` **Added**
* `client.i9verification.create_documents()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `i9_authorization_documents_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `status[200]` **Removed** (Breaking ⚠️)
    - `status[201]` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.i9verification.get_documents()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.[].expiration_date` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.i9verification.get_document_options()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.i9verification.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `i9_authorization_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `additional_info` **Changed** (Breaking ⚠️)
    - `alt_procedure` **Changed** (Breaking ⚠️)
    - `country` **Changed** (Breaking ⚠️)
    - `document_type` **Changed** (Breaking ⚠️)
    - `expiration_date` **Changed** (Breaking ⚠️)
    - `form_uuid` **Changed** (Breaking ⚠️)
    - `has_document_number` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.i9verification.get_authorization()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `additional_info` **Changed** (Breaking ⚠️)
    - `alt_procedure` **Changed** (Breaking ⚠️)
    - `country` **Changed** (Breaking ⚠️)
    - `document_type` **Changed** (Breaking ⚠️)
    - `expiration_date` **Changed** (Breaking ⚠️)
    - `form_uuid` **Changed** (Breaking ⚠️)
    - `has_document_number` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.garnishments.get_child_support_data()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Removed** (Breaking ⚠️)
* `client.garnishments.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `update_garnishment_request` **Added** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.garnishments.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.garnishments.list()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.garnishments.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `garnishment_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employee_benefits.create_ytd_benefit_amounts_from_different_company()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `post_employee_ytd_benefit_amounts_from_different_company` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
    - `ytd_benefit_amounts_from_different_company_body` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.employee_benefits.get_ytd_benefit_amounts_from_different_company()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employee_benefits.delete()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[422]` **Added**
* `client.employee_benefits.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `employee_benefit_update_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `additional_properties` **Added**
    - `catch_up` **Changed** (Breaking ⚠️)
    - `coverage_salary_multiplier` **Changed** (Breaking ⚠️)
    - `effective_date` **Added**
    - `expiration_date` **Added**
    - `retirement_loan_identifier` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.employee_benefits.retrieve()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `additional_properties` **Added**
    - `catch_up` **Changed** (Breaking ⚠️)
    - `coverage_salary_multiplier` **Changed** (Breaking ⚠️)
    - `effective_date` **Added**
    - `expiration_date` **Added**
    - `retirement_loan_identifier` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.employee_benefits.get()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `employee_id` **Removed** (Breaking ⚠️)
    - `page` **Removed** (Breaking ⚠️)
    - `per` **Removed** (Breaking ⚠️)
    - `request` **Added** (Breaking ⚠️)
    - `x_gusto_api_version` **Removed** (Breaking ⚠️)
  * `response.[]` **Changed** (Breaking ⚠️)
    - `additional_properties` **Added**
    - `catch_up` **Changed** (Breaking ⚠️)
    - `coverage_salary_multiplier` **Changed** (Breaking ⚠️)
    - `effective_date` **Added**
    - `expiration_date` **Added**
    - `retirement_loan_identifier` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.employee_benefits.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `employee_benefit_create_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `additional_properties` **Added**
    - `catch_up` **Changed** (Breaking ⚠️)
    - `coverage_salary_multiplier` **Changed** (Breaking ⚠️)
    - `effective_date` **Added**
    - `expiration_date` **Added**
    - `retirement_loan_identifier` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.company_benefits.get_requirements()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `catch_up.choices` **Changed** (Breaking ⚠️)
    - `catch_up.default_value` **Changed** (Breaking ⚠️)
    - `company_contribution_annual_maximum.choices` **Changed** (Breaking ⚠️)
    - `company_contribution_annual_maximum.default_value` **Changed** (Breaking ⚠️)
    - `contribution.choices` **Changed** (Breaking ⚠️)
    - `contribution.default_value` **Changed** (Breaking ⚠️)
    - `coverage_amount.choices` **Changed** (Breaking ⚠️)
    - `coverage_amount.default_value` **Changed** (Breaking ⚠️)
    - `coverage_salary_multiplier.choices` **Changed** (Breaking ⚠️)
    - `coverage_salary_multiplier.default_value` **Changed** (Breaking ⚠️)
    - `deduct_as_percentage.choices` **Changed** (Breaking ⚠️)
    - `deduct_as_percentage.default_value` **Changed** (Breaking ⚠️)
    - `employee_deduction.choices` **Changed** (Breaking ⚠️)
    - `employee_deduction.default_value` **Changed** (Breaking ⚠️)
    - `limit_option.choices` **Changed** (Breaking ⚠️)
    - `limit_option.default_value` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.company_benefits.update_employee_benefits()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `employee_benefit_bulk_update_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response.[]` **Changed** (Breaking ⚠️)
    - `additional_properties` **Added**
    - `catch_up` **Changed** (Breaking ⚠️)
    - `coverage_salary_multiplier` **Changed** (Breaking ⚠️)
    - `effective_date` **Added**
    - `expiration_date` **Added**
    - `retirement_loan_identifier` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.company_benefits.get_employee_benefits()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `company_benefit_id` **Removed** (Breaking ⚠️)
    - `page` **Removed** (Breaking ⚠️)
    - `per` **Removed** (Breaking ⚠️)
    - `request` **Added** (Breaking ⚠️)
    - `x_gusto_api_version` **Removed** (Breaking ⚠️)
  * `response.[]` **Changed** (Breaking ⚠️)
    - `additional_properties` **Added**
    - `catch_up` **Changed** (Breaking ⚠️)
    - `coverage_salary_multiplier` **Changed** (Breaking ⚠️)
    - `effective_date` **Added**
    - `expiration_date` **Added**
    - `retirement_loan_identifier` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.company_benefits.get_summary()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.employees` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.company_benefits.get_supported()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.writable_by_application` **Added**
  *  `error.status[404]` **Removed** (Breaking ⚠️)
* `client.company_benefits.get_all()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.[].writable_by_application` **Added**
  *  `error.status[404]` **Removed** (Breaking ⚠️)
* `client.company_benefits.delete()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[422]` **Removed** (Breaking ⚠️)
* `client.company_benefits.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `company_benefit_update_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.catch_up_type` **Added**
  *  `error.status[404]` **Added**
* `client.company_benefits.get()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `include` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `catch_up_type` **Added**
    - `employee_benefits[].effective_date` **Added**
    - `employee_benefits[].expiration_date` **Added**
    - `employee_benefits[].uuid` **Removed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.company_benefits.list()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `active` **Removed** (Breaking ⚠️)
    - `company_id` **Removed** (Breaking ⚠️)
    - `enrollment_count` **Removed** (Breaking ⚠️)
    - `request` **Added** (Breaking ⚠️)
    - `x_gusto_api_version` **Removed** (Breaking ⚠️)
  *  `response.[].catch_up_type` **Added**
  *  `error.status[404]` **Added**
* `client.company_benefits.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `company_benefit_create_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.catch_up_type` **Added**
  *  `error.status[404]` **Added**
* `client.companies.accept_terms_of_service()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `partner_managed_company_accept_terms_of_service_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.companies.retrieve_terms_of_service()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `partner_managed_company_retrieve_terms_of_service_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.companies.create_admin()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `admin_create_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.phone` **Added**
  *  `error.status[404]` **Added**
* `client.companies.list_admins()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.[].phone` **Added**
  *  `error.status[404]` **Added**
* `client.companies.get_onboarding_status()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.onboarding_steps[].completed_at` **Added**
  *  `error.status[404]` **Added**
* `client.companies.finish_onboarding()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.onboarding_steps[].completed_at` **Added**
  *  `error.status[404]` **Added**
* `client.companies.get_custom_fields()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.custom_fields[].description` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.companies.suspensions.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.[]` **Changed** (Breaking ⚠️)
    - `comments` **Changed** (Breaking ⚠️)
    - `leaving_for` **Changed** (Breaking ⚠️)
    - `tax_refunds` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.companies.suspensions.suspend()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.leaving_for.enum(adp)` **Added**
    - `request_body.leaving_for.enum(apd)` **Removed** (Breaking ⚠️)
    - `request_body.leaving_for.enum(deel)` **Added**
    - `request_body.leaving_for.enum(gusto_com)` **Added**
    - `request_body.leaving_for.enum(homebase)` **Added**
    - `request_body.leaving_for.enum(oyster)` **Added**
    - `request_body.leaving_for.enum(paychex)` **Added**
    - `request_body.leaving_for.enum(remote)` **Added**
    - `request_body.leaving_for.enum(velocity_global)` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `comments` **Changed** (Breaking ⚠️)
    - `leaving_for` **Changed** (Breaking ⚠️)
    - `tax_refunds` **Changed** (Breaking ⚠️)
* `client.invoices.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Removed** (Breaking ⚠️)
* `client.company_attachments.get_details()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `category` **Changed**
    - `name` **Changed**
    - `upload_time` **Changed**
    - `uuid` **Changed**
  *  `error.status[404]` **Added**
* `client.company_attachments.get_list()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.[]` **Changed**
    - `category` **Changed**
    - `name` **Changed**
    - `upload_time` **Changed**
    - `uuid` **Changed**
  *  `error.status[404]` **Added**
* `client.company_attachments.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `company_attachment_create_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `category` **Changed**
    - `name` **Changed**
    - `upload_time` **Changed**
    - `uuid` **Changed**
  *  `error.status[404]` **Added**
* `client.company_attachment.get_download_url()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.federal_tax_details.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `ein_verification` **Added**
    - `filing_form` **Changed** (Breaking ⚠️)
    - `tax_payer_type` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.federal_tax_details.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `federal_tax_details_update` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `ein_verification` **Added**
    - `filing_form` **Changed** (Breaking ⚠️)
    - `tax_payer_type` **Changed** (Breaking ⚠️)
  * `error` **Changed**
    - `` **Added**
    - `status[409]` **Added**
* `client.industry_selection.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.industry_selection.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `company_industry_selection_required_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.signatories.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `signatory_create_request` **Added** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.signatories.list()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.signatories.invite()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `signatory_invite_request` **Added** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.signatories.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `signatory_update_request` **Added** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[409]` **Added**
* `client.signatories.delete()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.flows.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `create_flow_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.locations.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `company_location_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.inactive` **Added**
  *  `error.status[404]` **Added**
* `client.locations.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.[].inactive` **Added**
  *  `error.status[404]` **Added**
* `client.locations.retrieve()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.inactive` **Added**
  * `errors[]` **Changed** (Breaking ⚠️)
    - `errors` **Removed** (Breaking ⚠️)
    - `metadata` **Removed** (Breaking ⚠️)
* `client.locations.update()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.inactive` **Added**
  * `errors[]` **Changed** (Breaking ⚠️)
    - `errors` **Removed** (Breaking ⚠️)
    - `metadata` **Removed** (Breaking ⚠️)
* `client.locations.get_minimum_wages()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `errors[]` **Changed** (Breaking ⚠️)
    - `errors` **Removed** (Breaking ⚠️)
    - `metadata` **Removed** (Breaking ⚠️)
* `client.bank_accounts.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `company_bank_account_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `reverse_wire_enabled` **Added**
    - `status[200]` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.bank_accounts.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.[].reverse_wire_enabled` **Added**
  *  `error.status[404]` **Added**
* `client.bank_accounts.verify()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `company_bank_account_verify_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.reverse_wire_enabled` **Added**
  *  `error.status[404]` **Added**
* `client.bank_accounts.create_from_plaid_token()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `plaid_processor_token_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.external_payrolls.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `external_payroll_create_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.applicable_benefits` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.external_payrolls.get()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `page` **Added**
    - `per` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.external_payrolls.retrieve()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.applicable_benefits` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.external_payrolls.delete()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[422]` **Added**
* `client.external_payrolls.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `external_payroll_update_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.applicable_benefits` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.external_payrolls.calculate_taxes()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[422]` **Added**
* `client.external_payrolls.list_tax_liabilities()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.[]` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.external_payrolls.update_tax_liabilities()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `tax_liability_selections_request` **Added** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.[]` **Changed** (Breaking ⚠️)
  * `error` **Changed** (Breaking ⚠️)
    - `` **Added**
    - `` **Removed** (Breaking ⚠️)
* `client.external_payrolls.finalize_tax_liabilities()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[422]` **Removed** (Breaking ⚠️)
* `client.payment_configs.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `earned_fast_ach_blockers` **Added**
    - `fast_payment_limit` **Changed** (Breaking ⚠️)
    - `partner_owned_disbursement` **Added**
    - `payment_speed` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.payment_configs.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `payment_configs_update_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `earned_fast_ach_blockers` **Added**
    - `fast_payment_limit` **Changed** (Breaking ⚠️)
    - `partner_owned_disbursement` **Added**
    - `payment_speed` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.pay_schedules.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `pay_schedule_create_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `anchor_end_of_pay_period` **Changed** (Breaking ⚠️)
    - `anchor_pay_date` **Changed** (Breaking ⚠️)
    - `auto_payroll_enablement_blockers` **Added**
    - `auto_payroll` **Added**
    - `frequency.enum(annually)` **Added** (Breaking ⚠️)
    - `frequency.enum(quarterly)` **Added** (Breaking ⚠️)
    - `version` **Added**
  *  `error.status[404]` **Added**
* `client.pay_schedules.get_all()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.[]` **Changed** (Breaking ⚠️)
    - `anchor_end_of_pay_period` **Changed** (Breaking ⚠️)
    - `anchor_pay_date` **Changed** (Breaking ⚠️)
    - `auto_payroll_enablement_blockers` **Added**
    - `auto_payroll` **Added**
  *  `error.status[404]` **Added**
* `client.pay_schedules.get_preview()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `anchor_end_of_pay_period` **Changed** (Breaking ⚠️)
    - `anchor_pay_date` **Changed** (Breaking ⚠️)
    - `end_date` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `holidays[]` **Changed** (Breaking ⚠️)
    - `pay_periods[].check_date` **Changed** (Breaking ⚠️)
    - `pay_periods[].end_date` **Changed** (Breaking ⚠️)
    - `pay_periods[].run_payroll_by` **Changed** (Breaking ⚠️)
    - `pay_periods[].start_date` **Changed** (Breaking ⚠️)
  * `error` **Changed**
    - `status[404]` **Added**
    - `status[422]` **Added**
* `client.pay_schedules.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `anchor_end_of_pay_period` **Changed** (Breaking ⚠️)
    - `anchor_pay_date` **Changed** (Breaking ⚠️)
    - `auto_payroll_enablement_blockers` **Added**
    - `auto_payroll` **Added**
  *  `error.status[404]` **Added**
* `client.pay_schedules.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `pay_schedule_update_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `anchor_end_of_pay_period` **Changed** (Breaking ⚠️)
    - `anchor_pay_date` **Changed** (Breaking ⚠️)
    - `auto_payroll_enablement_blockers` **Added**
    - `auto_payroll` **Added**
    - `frequency.enum(annually)` **Added** (Breaking ⚠️)
    - `frequency.enum(quarterly)` **Added** (Breaking ⚠️)
    - `version` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[409]` **Added**
* `client.pay_schedules.get_pay_periods()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `end_date` **Changed** (Breaking ⚠️)
    - `payroll_types` **Changed** (Breaking ⚠️)
    - `start_date` **Changed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[422]` **Added**
* `client.pay_schedules.get_unprocessed_termination_periods()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employee_tax_setup.update_state_taxes()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `employee_state_taxes_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response.[]` **Changed** (Breaking ⚠️)
    - `employee_uuid` **Changed**
    - `questions[].answers[].valid_up_to` **Changed** (Breaking ⚠️)
    - `questions[].description` **Changed** (Breaking ⚠️)
    - `questions[].is_question_for_admin_only` **Added**
    - `state` **Changed**
  *  `error.status[404]` **Added**
* `client.pay_schedules.preview_assignment()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.pay_schedules.assign()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employees.list()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `include[].enum(all_home_addresses)` **Added**
    - `include[].enum(current_home_address)` **Added**
    - `include[].enum(portal_invitations)` **Added**
    - `location_uuid` **Added**
    - `onboarded_active` **Added**
    - `onboarded` **Added**
    - `payroll_uuid` **Added**
    - `sort_by` **Added**
    - `terminated_today` **Added**
    - `uuids` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response.[]` **Changed** (Breaking ⚠️)
    - `additional_properties` **Added**
    - `all_home_addresses` **Added**
    - `applicable_tax_ids` **Added**
    - `current_home_address` **Added**
    - `custom_fields[].description` **Changed** (Breaking ⚠️)
    - `department_uuid` **Added**
    - `eligible_paid_time_off[].accrual_balance` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_method` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_period` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_rate` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_unit` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].name` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].policy_name` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].policy_uuid` **Changed** (Breaking ⚠️)
    - `employee_code` **Added**
    - `flsa_status` **Added**
    - `hidden_ssn` **Added**
    - `hired_at` **Added**
    - `historical` **Added**
    - `jobs[].compensations[].title` **Added**
    - `jobs[].location_uuid` **Added**
    - `jobs[].location` **Added**
    - `member_portal_invitation_status` **Added**
    - `partner_portal_invitation_sent` **Added**
    - `title` **Added**
  * `errors[]` **Changed** (Breaking ⚠️)
    - `errors` **Removed** (Breaking ⚠️)
    - `metadata` **Removed** (Breaking ⚠️)
* `client.employees.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.email` **Changed**
    - `request_body.work_email` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `applicable_tax_ids` **Added**
    - `custom_fields[].description` **Changed** (Breaking ⚠️)
    - `department_uuid` **Added**
    - `eligible_paid_time_off[].accrual_balance` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_method` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_period` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_rate` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_unit` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].name` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].policy_name` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].policy_uuid` **Changed** (Breaking ⚠️)
    - `employee_code` **Added**
    - `flsa_status` **Added**
    - `hidden_ssn` **Added**
    - `hired_at` **Added**
    - `historical` **Added**
    - `jobs[].compensations[].title` **Added**
    - `jobs[].location_uuid` **Added**
    - `jobs[].location` **Added**
    - `member_portal_invitation_status` **Added**
    - `partner_portal_invitation_sent` **Added**
    - `title` **Added**
  * `errors[]` **Changed** (Breaking ⚠️)
    - `errors` **Removed** (Breaking ⚠️)
    - `metadata` **Removed** (Breaking ⚠️)
* `client.employees.create_historical()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `historical_employee_body.date_of_birth` **Changed** (Breaking ⚠️)
    - `historical_employee_body.job.hire_date` **Changed** (Breaking ⚠️)
    - `historical_employee_body.termination.effective_date` **Changed** (Breaking ⚠️)
    - `historical_employee_body.work_address.location_uuid` **Changed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `applicable_tax_ids` **Added**
    - `custom_fields[].description` **Changed** (Breaking ⚠️)
    - `department_uuid` **Added**
    - `eligible_paid_time_off[].accrual_balance` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_method` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_period` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_rate` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_unit` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].name` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].policy_name` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].policy_uuid` **Changed** (Breaking ⚠️)
    - `employee_code` **Added**
    - `flsa_status` **Added**
    - `hidden_ssn` **Added**
    - `hired_at` **Added**
    - `historical` **Added**
    - `jobs[].compensations[].title` **Added**
    - `jobs[].location_uuid` **Added**
    - `jobs[].location` **Added**
    - `member_portal_invitation_status` **Added**
    - `partner_portal_invitation_sent` **Added**
    - `title` **Added**
  *  `error.status[404]` **Added**
* `client.employees.get()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `include[].enum(all_home_addresses)` **Added**
    - `include[].enum(current_home_address)` **Added**
    - `include[].enum(portal_invitations)` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `applicable_tax_ids` **Added**
    - `custom_fields[].description` **Changed** (Breaking ⚠️)
    - `department_uuid` **Added**
    - `eligible_paid_time_off[].accrual_balance` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_method` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_period` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_rate` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_unit` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].name` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].policy_name` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].policy_uuid` **Changed** (Breaking ⚠️)
    - `employee_code` **Added**
    - `flsa_status` **Added**
    - `hidden_ssn` **Added**
    - `hired_at` **Added**
    - `historical` **Added**
    - `jobs[].compensations[].title` **Added**
    - `jobs[].location_uuid` **Added**
    - `jobs[].location` **Added**
    - `member_portal_invitation_status` **Added**
    - `partner_portal_invitation_sent` **Added**
    - `title` **Added**
  *  `error.status[404]` **Added**
* `client.employees.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.work_email` **Added**
    - `x_gusto_api_version` **Changed** (Breaking ⚠️)
  * `response` **Changed** (Breaking ⚠️)
    - `applicable_tax_ids` **Added**
    - `custom_fields[].description` **Changed** (Breaking ⚠️)
    - `department_uuid` **Added**
    - `eligible_paid_time_off[].accrual_balance` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_method` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_period` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_rate` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_unit` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].name` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].policy_name` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].policy_uuid` **Changed** (Breaking ⚠️)
    - `employee_code` **Added**
    - `flsa_status` **Added**
    - `hidden_ssn` **Added**
    - `hired_at` **Added**
    - `historical` **Added**
    - `jobs[].compensations[].title` **Added**
    - `jobs[].location_uuid` **Added**
    - `jobs[].location` **Added**
    - `member_portal_invitation_status` **Added**
    - `partner_portal_invitation_sent` **Added**
    - `title` **Added**
  * `errors[]` **Changed** (Breaking ⚠️)
    - `errors` **Removed** (Breaking ⚠️)
    - `metadata` **Removed** (Breaking ⚠️)
* `client.employees.delete()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `error` **Changed**
    - `` **Added**
* `client.employees.get_custom_fields()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.custom_fields[].description` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.employees.update_onboarding_documents_config()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `employee_onboarding_documents_config_request` **Added**
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `i9_document` **Changed** (Breaking ⚠️)
    - `uuid` **Added**
  *  `error.status[404]` **Added**
* `client.employees.get_onboarding_status()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employees.update_onboarding_status()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.onboarding_status.enum(self_onboarding_awaiting_admin_review)` **Added**
    - `request_body.onboarding_status.enum(self_onboarding_completed_by_employee)` **Added**
    - `request_body.onboarding_status.enum(self_onboarding_invited_overdue)` **Added**
    - `request_body.onboarding_status.enum(self_onboarding_invited_started)` **Added**
    - `request_body.onboarding_status.enum(self_onboarding_pending_invite)` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `errors[]` **Changed** (Breaking ⚠️)
    - `errors` **Removed** (Breaking ⚠️)
    - `metadata` **Removed** (Breaking ⚠️)
* `client.employees.get_time_off_activities()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response` **Changed** (Breaking ⚠️)
  * `error` **Changed**
    - `` **Added**
    - `status[422]` **Added**
* `client.historical_employees.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.date_of_birth` **Changed** (Breaking ⚠️)
    - `request_body.job.hire_date` **Changed** (Breaking ⚠️)
    - `request_body.termination.effective_date` **Changed** (Breaking ⚠️)
    - `request_body.work_address.location_uuid` **Changed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `applicable_tax_ids` **Added**
    - `custom_fields[].description` **Changed** (Breaking ⚠️)
    - `department_uuid` **Added**
    - `eligible_paid_time_off[].accrual_balance` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_method` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_period` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_rate` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].accrual_unit` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].name` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].policy_name` **Changed** (Breaking ⚠️)
    - `eligible_paid_time_off[].policy_uuid` **Changed** (Breaking ⚠️)
    - `employee_code` **Added**
    - `flsa_status` **Added**
    - `hidden_ssn` **Added**
    - `hired_at` **Added**
    - `historical` **Added**
    - `jobs[].compensations[].title` **Added**
    - `jobs[].location_uuid` **Added**
    - `jobs[].location` **Added**
    - `member_portal_invitation_status` **Added**
    - `partner_portal_invitation_sent` **Added**
    - `title` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[422]` **Added**
* `client.departments.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `department_create_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.departments.get_all()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.departments.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.departments.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `department_update_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[409]` **Added**
* `client.departments.delete()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.departments.add_people()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `department_people_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[422]` **Added**
* `client.departments.remove_people()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `department_people_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[422]` **Added**
* `client.introspection.get_info()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `resource.type` **Changed**
    - `resource.uuid` **Changed**
    - `resource_owner.type` **Changed**
    - `resource_owner.uuid` **Changed**
    - `scope` **Changed**
* `client.employee_employments.get_terminations()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employee_employments.delete_termination()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `error` **Changed** (Breaking ⚠️)
    - `errors[].errors` **Removed** (Breaking ⚠️)
    - `errors[].metadata` **Removed** (Breaking ⚠️)
    - `status[422]` **Added**
* `client.employee_employments.update_termination()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.run_termination_payroll` **Changed**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `errors[]` **Changed** (Breaking ⚠️)
    - `errors` **Removed** (Breaking ⚠️)
    - `metadata` **Removed** (Breaking ⚠️)
* `client.employee_employments.create_rehire()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employee_employments.rehire()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `rehire_update_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `errors[]` **Changed** (Breaking ⚠️)
    - `errors` **Removed** (Breaking ⚠️)
    - `metadata` **Removed** (Breaking ⚠️)
* `client.employee_employments.get_rehire()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.status[204]` **Added** (Breaking ⚠️)
  * `errors[]` **Changed** (Breaking ⚠️)
    - `errors` **Removed** (Breaking ⚠️)
    - `metadata` **Removed** (Breaking ⚠️)
* `client.employee_employments.delete_rehire()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `error` **Changed** (Breaking ⚠️)
    - `errors[].errors` **Removed** (Breaking ⚠️)
    - `errors[].metadata` **Removed** (Breaking ⚠️)
    - `status[422]` **Added**
* `client.employee_employments.get_history()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.[].termination_date` **Changed** (Breaking ⚠️)
  * `errors[]` **Changed** (Breaking ⚠️)
    - `errors` **Removed** (Breaking ⚠️)
    - `metadata` **Removed** (Breaking ⚠️)
* `client.employee_addresses.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.[]` **Changed**
    - `uuid` **Changed**
    - `version` **Changed**
  *  `error.status[404]` **Added**
* `client.employee_addresses.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.effective_date` **Changed**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `uuid` **Changed**
    - `version` **Changed**
  *  `error.status[404]` **Added**
* `client.employee_addresses.retrieve_home_address()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `uuid` **Changed**
    - `version` **Changed**
  *  `error.status[404]` **Added**
* `client.employee_addresses.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.effective_date` **Changed**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `uuid` **Changed**
    - `version` **Changed**
  *  `error.status[404]` **Added**
* `client.employee_addresses.delete()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employee_addresses.get_work_addresses()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employee_addresses.create_work_address()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employee_addresses.retrieve_work_address()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employee_addresses.update_work_address()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employee_addresses.delete_work_address()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employee_tax_setup.get_federal_taxes()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.employee_tax_setup.update_federal_taxes()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.additional_withholding` **Added**
    - `request_body.deductions` **Changed** (Breaking ⚠️)
    - `request_body.dependents_amount` **Changed** (Breaking ⚠️)
    - `request_body.extra_withholding` **Changed** (Breaking ⚠️)
    - `request_body.federal_withholding_allowance` **Added**
    - `request_body.filing_status` **Changed** (Breaking ⚠️)
    - `request_body.other_income` **Changed** (Breaking ⚠️)
    - `request_body.w4_data_type` **Changed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response` **Changed** (Breaking ⚠️)
  * `error` **Changed**
    - `` **Added**
    - `status[409]` **Added**
* `client.employee_employments.create_termination()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.run_termination_payroll` **Changed**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.companies.create_partner_managed()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `partner_managed_company_create_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[401]` **Removed** (Breaking ⚠️)
* `client.pay_schedules.get_assignments()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.employees[].pay_schedule_uuid` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.employee_payment_method.delete_bank_account()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[422]` **Added**
* `client.employee_payment_method.update_bank_account()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `employee_bank_account_request` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employee_payment_method.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employee_payment_method.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.split_by` **Changed**
    - `request_body.splits[].split_amount` **Changed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[409]` **Added**
* `client.employee_payment_methods.get_bank_accounts()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.jobs_and_compensations.create_job()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `jobs_create_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `compensations[].title` **Added**
    - `location_uuid` **Added**
    - `location` **Added**
  *  `error.status[404]` **Added**
* `client.jobs_and_compensations.get_jobs()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.[]` **Changed**
    - `compensations[].title` **Added**
    - `location_uuid` **Added**
    - `location` **Added**
  *  `error.status[404]` **Added**
* `client.jobs_and_compensations.get_job()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `compensations[].title` **Added**
    - `location_uuid` **Added**
    - `location` **Added**
  *  `error.status[404]` **Added**
* `client.jobs_and_compensations.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `jobs_update_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `compensations[].title` **Added**
    - `location_uuid` **Added**
    - `location` **Added**
  *  `error.status[404]` **Added**
* `client.jobs_and_compensations.delete()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[422]` **Added**
* `client.jobs_and_compensations.get_compensations()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.[].title` **Added**
  *  `error.status[404]` **Added**
* `client.jobs_and_compensations.create_compensation()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `compensations_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.title` **Added**
  *  `error.status[404]` **Added**
* `client.jobs_and_compensations.get_compensation()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.title` **Added**
  *  `error.status[404]` **Added**
* `client.jobs_and_compensations.update_compensation()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `compensations_update_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.title` **Added**
  *  `error.status[404]` **Added**
* `client.jobs_and_compensations.delete_compensation()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[422]` **Added**
* `client.earning_types.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.name` **Changed**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.active` **Added**
  *  `error.status[404]` **Added**
* `client.earning_types.list()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.default[].active` **Added**
  *  `error.status[404]` **Added**
* `client.earning_types.update()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.active` **Added**
  *  `error.status[404]` **Added**
* `client.earning_types.delete()`: `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
* `client.contractors.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `contractor_create_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `department_title` **Added**
    - `department` **Added**
    - `dismissal_cancellation_eligible` **Added**
    - `dismissal_date` **Added**
    - `file_new_hire_report` **Changed** (Breaking ⚠️)
    - `member_portal_invitation_status` **Added**
    - `partner_portal_invitation_sent` **Added**
    - `rehire_cancellation_eligible` **Added**
    - `upcoming_employment` **Added**
  *  `error.status[404]` **Added**
* `client.contractors.list()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `include` **Added**
    - `onboarded_active` **Added**
    - `onboarded` **Added**
    - `sort_by` **Added**
    - `terminated_today` **Added**
    - `terminated` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response.[]` **Changed** (Breaking ⚠️)
    - `department_title` **Added**
    - `department` **Added**
    - `dismissal_cancellation_eligible` **Added**
    - `dismissal_date` **Added**
    - `file_new_hire_report` **Changed** (Breaking ⚠️)
    - `member_portal_invitation_status` **Added**
    - `partner_portal_invitation_sent` **Added**
    - `rehire_cancellation_eligible` **Added**
    - `upcoming_employment` **Added**
  *  `error.status[404]` **Added**
* `client.contractors.get()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `include` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `department_title` **Added**
    - `department` **Added**
    - `dismissal_cancellation_eligible` **Added**
    - `dismissal_date` **Added**
    - `file_new_hire_report` **Changed** (Breaking ⚠️)
    - `member_portal_invitation_status` **Added**
    - `partner_portal_invitation_sent` **Added**
    - `rehire_cancellation_eligible` **Added**
    - `upcoming_employment` **Added**
  *  `error.status[404]` **Added**
* `client.contractors.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `contractor_update_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `department_title` **Added**
    - `department` **Added**
    - `dismissal_cancellation_eligible` **Added**
    - `dismissal_date` **Added**
    - `file_new_hire_report` **Changed** (Breaking ⚠️)
    - `member_portal_invitation_status` **Added**
    - `partner_portal_invitation_sent` **Added**
    - `rehire_cancellation_eligible` **Added**
    - `upcoming_employment` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[409]` **Added**
* `client.contractors.delete()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[422]` **Added**
* `client.contractors.get_onboarding_status()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.onboarding_status` **Changed** (Breaking ⚠️)
    - `enum(self_onboarding_invited)` **Added** (Breaking ⚠️)
    - `enum(self_onboarding_not_invited)` **Added** (Breaking ⚠️)
    - `enum(self_onboarding_review)` **Added** (Breaking ⚠️)
    - `enum(self_onboarding_started)` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.contractors.update_onboarding_status()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `contractor_onboarding_status_update_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response.onboarding_status` **Changed** (Breaking ⚠️)
    - `enum(self_onboarding_invited)` **Added** (Breaking ⚠️)
    - `enum(self_onboarding_not_invited)` **Added** (Breaking ⚠️)
    - `enum(self_onboarding_review)` **Added** (Breaking ⚠️)
    - `enum(self_onboarding_started)` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.contractors.get_address()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `city` **Changed** (Breaking ⚠️)
    - `country` **Changed** (Breaking ⚠️)
    - `state` **Changed** (Breaking ⚠️)
    - `street_1` **Changed** (Breaking ⚠️)
    - `zip` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.contractors.update_address()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `contractor_address_update_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `city` **Changed** (Breaking ⚠️)
    - `country` **Changed** (Breaking ⚠️)
    - `state` **Changed** (Breaking ⚠️)
    - `street_1` **Changed** (Breaking ⚠️)
    - `zip` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.contractor_payment_methods.create_bank_account()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `contractor_bank_account_create_request_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `account_type` **Changed**
    - `contractor_uuid` **Changed**
    - `hidden_account_number` **Changed**
    - `name` **Changed**
    - `routing_number` **Changed**
  *  `error.status[404]` **Added**
* `client.contractor_payment_method.get_bank_accounts()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.[]` **Changed**
    - `account_type` **Changed**
    - `contractor_uuid` **Changed**
    - `hidden_account_number` **Changed**
    - `name` **Changed**
    - `routing_number` **Changed**
  *  `error.status[404]` **Added**
* `client.contractor_payment_method.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.type` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.contractor_payment_method.update()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.type` **Changed** (Breaking ⚠️)
  * `error` **Changed**
    - `` **Added**
    - `status[409]` **Added**
* `client.webhooks.create_subscription()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.subscription_types[].enum(payroll_sync)` **Added**
    - `request_body.subscription_types[].enum(people_batch)` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.subscription_types[].enum(payroll_sync)` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Removed** (Breaking ⚠️)
* `client.webhooks.list_subscriptions()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.[].subscription_types[].enum(payroll_sync)` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Removed** (Breaking ⚠️)
* `client.webhooks.update_subscription()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.subscription_types[].enum(payroll_sync)` **Added**
    - `request_body.subscription_types[].enum(people_batch)` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.subscription_types[].enum(payroll_sync)` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.webhooks.get_subscription()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.subscription_types[].enum(payroll_sync)` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.webhooks.delete_subscription()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.webhooks.verify()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.subscription_types[].enum(payroll_sync)` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.webhooks.request_verification_token()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.status[200]` **Added**
  *  `error.status[404]` **Added**
* `client.contractor_forms.list()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.contractor_forms.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.contractor_forms.get_pdf()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.contractor_forms.generate1099()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `status[200]` **Removed** (Breaking ⚠️)
    - `status[201]` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.contractor_documents.get_all()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.[].fields[]` **Changed** (Breaking ⚠️)
    - `height` **Changed** (Breaking ⚠️)
    - `key` **Changed** (Breaking ⚠️)
    - `page_number` **Changed** (Breaking ⚠️)
    - `width` **Changed** (Breaking ⚠️)
    - `x` **Changed** (Breaking ⚠️)
    - `y` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.contractor_documents.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.fields[]` **Changed** (Breaking ⚠️)
    - `height` **Changed** (Breaking ⚠️)
    - `key` **Changed** (Breaking ⚠️)
    - `page_number` **Changed** (Breaking ⚠️)
    - `width` **Changed** (Breaking ⚠️)
    - `x` **Changed** (Breaking ⚠️)
    - `y` **Changed** (Breaking ⚠️)
  * `error` **Changed**
    - `` **Added**
    - `status[422]` **Added**
* `client.contractor_documents.get_pdf()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[422]` **Added**
* `client.contractor_documents.sign()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `fields` **Added**
    - `pages` **Added**
  *  `error.status[404]` **Added**
* `client.employee_forms.generate_w2()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `status[200]` **Removed** (Breaking ⚠️)
    - `status[201]` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.employee_forms.list()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.[].employee_uuid` **Added**
  *  `error.status[404]` **Added**
* `client.employee_forms.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.employee_uuid` **Added**
  *  `error.status[404]` **Added**
* `client.employee_forms.get_pdf()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.employee_forms.sign()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.employee_uuid` **Added**
  *  `error.status[404]` **Added**
* `client.payrolls.create_off_cycle()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.check_date` **Changed** (Breaking ⚠️)
    - `request_body.employee_uuids` **Changed**
    - `request_body.end_date` **Changed** (Breaking ⚠️)
    - `request_body.is_check_only_payroll` **Added**
    - `request_body.off_cycle_reason.enum(adhoc)` **Added**
    - `request_body.start_date` **Changed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `calculated_at` **Changed** (Breaking ⚠️)
    - `employee_compensations[].benefits` **Removed** (Breaking ⚠️)
    - `employee_compensations[].deductions` **Removed** (Breaking ⚠️)
    - `employee_compensations[].first_name` **Added**
    - `employee_compensations[].last_name` **Added**
    - `employee_compensations[].paid_time_off[].final_payout_unused_hours_input` **Changed** (Breaking ⚠️)
    - `employee_compensations[].payment_method.enum(historical)` **Added** (Breaking ⚠️)
    - `employee_compensations[].preferred_first_name` **Added**
    - `employee_compensations[].reimbursements` **Added**
    - `employee_compensations[].taxes` **Removed** (Breaking ⚠️)
    - `employee_compensations[].version` **Changed** (Breaking ⚠️)
    - `fixed_withholding_rate` **Changed** (Breaking ⚠️)
    - `off_cycle_reason.enum(adhoc)` **Added** (Breaking ⚠️)
    - `partner_owned_disbursement` **Added**
    - `processed_date` **Changed** (Breaking ⚠️)
    - `skip_regular_deductions` **Changed** (Breaking ⚠️)
    - `withholding_pay_period` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.payrolls.list()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `date_filter_by` **Added**
    - `include[].enum(taxes)` **Added**
    - `include_off_cycle` **Added**
    - `processed` **Added**
    - `processing_statuses` **Changed**
    - `sort_order` **Changed**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response.[]` **Changed** (Breaking ⚠️)
    - `calculated_at` **Changed** (Breaking ⚠️)
    - `company_taxes` **Added**
    - `company_uuid` **Changed**
    - `credit_blockers[].unblock_options[]` **Changed** (Breaking ⚠️)
    - `fixed_withholding_rate` **Changed** (Breaking ⚠️)
    - `off_cycle_reason.enum(adhoc)` **Added** (Breaking ⚠️)
    - `partner_owned_disbursement` **Added**
    - `payroll_taxes` **Added**
    - `payroll_uuid` **Changed**
    - `processed_date` **Changed** (Breaking ⚠️)
    - `processed` **Changed**
    - `processing_request` **Added**
    - `reversal_payroll_uuids` **Removed** (Breaking ⚠️)
    - `skip_regular_deductions` **Changed** (Breaking ⚠️)
    - `submission_blockers[].unblock_options[].metadata` **Changed** (Breaking ⚠️)
    - `uuid` **Changed**
    - `withholding_pay_period` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.payrolls.get_approved_reversals()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.payrolls.get()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `company_id` **Removed** (Breaking ⚠️)
    - `include` **Removed** (Breaking ⚠️)
    - `payroll_id` **Removed** (Breaking ⚠️)
    - `request` **Added** (Breaking ⚠️)
    - `x_gusto_api_version` **Removed** (Breaking ⚠️)
  * `response` **Changed** (Breaking ⚠️)
    - `calculated_at` **Changed** (Breaking ⚠️)
    - `credit_blockers[].unblock_options[]` **Changed** (Breaking ⚠️)
    - `employee_compensations[].additional_properties` **Added**
    - `employee_compensations[].deductions[].amount_type` **Added**
    - `employee_compensations[].deductions[].updatable_via_payroll` **Added**
    - `employee_compensations[].deductions[].uuid` **Added**
    - `employee_compensations[].first_name` **Added**
    - `employee_compensations[].last_name` **Added**
    - `employee_compensations[].paid_time_off[].final_payout_unused_hours_input` **Changed** (Breaking ⚠️)
    - `employee_compensations[].payment_method.enum(historical)` **Added** (Breaking ⚠️)
    - `employee_compensations[].preferred_first_name` **Added**
    - `employee_compensations[].reimbursements` **Added**
    - `employee_compensations[].version` **Changed** (Breaking ⚠️)
    - `fixed_withholding_rate` **Changed** (Breaking ⚠️)
    - `off_cycle_reason.enum(adhoc)` **Added** (Breaking ⚠️)
    - `partner_owned_disbursement` **Added**
    - `payroll_taxes` **Added**
    - `processed_date` **Changed** (Breaking ⚠️)
    - `skip_regular_deductions` **Changed** (Breaking ⚠️)
    - `submission_blockers[].unblock_options[].metadata` **Changed** (Breaking ⚠️)
    - `withholding_pay_period` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.payrolls.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `payroll_update` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `calculated_at` **Changed** (Breaking ⚠️)
    - `employee_compensations[].benefits` **Removed** (Breaking ⚠️)
    - `employee_compensations[].deductions[].amount_type` **Added**
    - `employee_compensations[].deductions[].updatable_via_payroll` **Added**
    - `employee_compensations[].deductions[].uuid` **Added**
    - `employee_compensations[].first_name` **Added**
    - `employee_compensations[].last_name` **Added**
    - `employee_compensations[].paid_time_off[].final_payout_unused_hours_input` **Changed** (Breaking ⚠️)
    - `employee_compensations[].payment_method.enum(historical)` **Added** (Breaking ⚠️)
    - `employee_compensations[].preferred_first_name` **Added**
    - `employee_compensations[].reimbursements` **Added**
    - `employee_compensations[].taxes` **Removed** (Breaking ⚠️)
    - `employee_compensations[].version` **Changed** (Breaking ⚠️)
    - `fixed_withholding_rate` **Changed** (Breaking ⚠️)
    - `off_cycle_reason.enum(adhoc)` **Added** (Breaking ⚠️)
    - `partner_owned_disbursement` **Added**
    - `processed_date` **Changed** (Breaking ⚠️)
    - `skip_regular_deductions` **Changed** (Breaking ⚠️)
    - `withholding_pay_period` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.payrolls.delete()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `error` **Changed** (Breaking ⚠️)
    - `` **Added**
    - `status[422]` **Removed** (Breaking ⚠️)
* `client.payrolls.prepare()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `company_id` **Removed** (Breaking ⚠️)
    - `payroll_id` **Removed** (Breaking ⚠️)
    - `request` **Added** (Breaking ⚠️)
    - `x_gusto_api_version` **Removed** (Breaking ⚠️)
  * `response` **Changed** (Breaking ⚠️)
    - `calculated_at` **Changed** (Breaking ⚠️)
    - `employee_compensations[].benefits` **Removed** (Breaking ⚠️)
    - `employee_compensations[].deductions[].amount_type` **Added**
    - `employee_compensations[].deductions[].updatable_via_payroll` **Added**
    - `employee_compensations[].deductions[].uuid` **Added**
    - `employee_compensations[].first_name` **Added**
    - `employee_compensations[].last_name` **Added**
    - `employee_compensations[].paid_time_off[].final_payout_unused_hours_input` **Changed** (Breaking ⚠️)
    - `employee_compensations[].payment_method.enum(historical)` **Added** (Breaking ⚠️)
    - `employee_compensations[].preferred_first_name` **Added**
    - `employee_compensations[].reimbursements` **Added**
    - `employee_compensations[].taxes` **Removed** (Breaking ⚠️)
    - `employee_compensations[].version` **Changed** (Breaking ⚠️)
    - `fixed_withholding_rate` **Changed** (Breaking ⚠️)
    - `off_cycle_reason.enum(adhoc)` **Added** (Breaking ⚠️)
    - `partner_owned_disbursement` **Added**
    - `processed_date` **Changed** (Breaking ⚠️)
    - `skip_regular_deductions` **Changed** (Breaking ⚠️)
    - `withholding_pay_period` **Changed** (Breaking ⚠️)
  * `error` **Changed**
    - `` **Added**
    - `status[422]` **Added**
* `client.payrolls.get_receipt()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.employee_compensations[].payment_method` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.payrolls.get_blockers()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.[]` **Changed** (Breaking ⚠️)
    - `key` **Changed** (Breaking ⚠️)
    - `message` **Changed**
  *  `error.status[404]` **Added**
* `client.payrolls.cancel()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `calculated_at` **Changed** (Breaking ⚠️)
    - `company_taxes` **Removed** (Breaking ⚠️)
    - `credit_blockers` **Removed** (Breaking ⚠️)
    - `employee_compensations` **Removed** (Breaking ⚠️)
    - `final_termination_payroll` **Removed** (Breaking ⚠️)
    - `fixed_withholding_rate` **Removed** (Breaking ⚠️)
    - `off_cycle_reason.enum(adhoc)` **Added** (Breaking ⚠️)
    - `partner_owned_disbursement` **Added**
    - `payment_speed_changed` **Removed** (Breaking ⚠️)
    - `payroll_status_meta` **Removed** (Breaking ⚠️)
    - `processed_date` **Changed** (Breaking ⚠️)
    - `processing_request` **Removed** (Breaking ⚠️)
    - `skip_regular_deductions` **Removed** (Breaking ⚠️)
    - `submission_blockers` **Removed** (Breaking ⚠️)
    - `totals` **Removed** (Breaking ⚠️)
    - `withholding_pay_period` **Removed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.payrolls.get_pay_stub()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.status[200].content[application/pdf` **Added**
  *  `error.status[404]` **Added**
* `client.payrolls.get_pay_stubs()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `page` **Added**
    - `per` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.[].payment_method` **Added**
  * `errors[]` **Changed** (Breaking ⚠️)
    - `errors` **Removed** (Breaking ⚠️)
    - `metadata` **Removed** (Breaking ⚠️)
* `client.payrolls.generate_printable_checks()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `printable_payroll_checks_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.starting_check_number` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.time_off_policies.calculate_accruing_time_off_hours()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `payroll_calculate_accruing_time_off_hours_request` **Added**
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.time_off_policies.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `accrual_rate_unit` **Changed** (Breaking ⚠️)
    - `accrual_rate` **Changed** (Breaking ⚠️)
    - `accrual_waiting_period_days` **Changed** (Breaking ⚠️)
    - `carryover_limit_hours` **Changed** (Breaking ⚠️)
    - `employees[].balance` **Added**
    - `max_accrual_hours_per_year` **Changed** (Breaking ⚠️)
    - `max_hours` **Changed** (Breaking ⚠️)
    - `policy_reset_date` **Added**
    - `policy_type.enum(bereavement)` **Added** (Breaking ⚠️)
    - `policy_type.enum(custom)` **Added** (Breaking ⚠️)
    - `policy_type.enum(floating_holiday)` **Added** (Breaking ⚠️)
    - `policy_type.enum(jury_duty)` **Added** (Breaking ⚠️)
    - `policy_type.enum(learning_and_development)` **Added** (Breaking ⚠️)
    - `policy_type.enum(parental_leave)` **Added** (Breaking ⚠️)
    - `policy_type.enum(personal_day)` **Added** (Breaking ⚠️)
    - `policy_type.enum(volunteer)` **Added** (Breaking ⚠️)
    - `policy_type.enum(weather)` **Added** (Breaking ⚠️)
    - `version` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.time_off_policies.update()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.accrual_rate_unit` **Changed**
    - `request_body.accrual_rate` **Changed**
    - `request_body.accrual_waiting_period_days` **Changed**
    - `request_body.carryover_limit_hours` **Changed**
    - `request_body.complete` **Added**
    - `request_body.max_accrual_hours_per_year` **Changed**
    - `request_body.max_hours` **Changed**
    - `request_body.policy_reset_date` **Added**
    - `request_body.policy_type` **Added**
    - `request_body.version` **Added** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `accrual_rate_unit` **Changed** (Breaking ⚠️)
    - `accrual_rate` **Changed** (Breaking ⚠️)
    - `accrual_waiting_period_days` **Changed** (Breaking ⚠️)
    - `carryover_limit_hours` **Changed** (Breaking ⚠️)
    - `employees[].balance` **Added**
    - `max_accrual_hours_per_year` **Changed** (Breaking ⚠️)
    - `max_hours` **Changed** (Breaking ⚠️)
    - `policy_reset_date` **Added**
    - `policy_type.enum(bereavement)` **Added** (Breaking ⚠️)
    - `policy_type.enum(custom)` **Added** (Breaking ⚠️)
    - `policy_type.enum(floating_holiday)` **Added** (Breaking ⚠️)
    - `policy_type.enum(jury_duty)` **Added** (Breaking ⚠️)
    - `policy_type.enum(learning_and_development)` **Added** (Breaking ⚠️)
    - `policy_type.enum(parental_leave)` **Added** (Breaking ⚠️)
    - `policy_type.enum(personal_day)` **Added** (Breaking ⚠️)
    - `policy_type.enum(volunteer)` **Added** (Breaking ⚠️)
    - `policy_type.enum(weather)` **Added** (Breaking ⚠️)
    - `version` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.time_off_policies.get_all()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.[]` **Changed** (Breaking ⚠️)
    - `accrual_rate_unit` **Changed** (Breaking ⚠️)
    - `accrual_rate` **Changed** (Breaking ⚠️)
    - `accrual_waiting_period_days` **Changed** (Breaking ⚠️)
    - `carryover_limit_hours` **Changed** (Breaking ⚠️)
    - `employees[].balance` **Added**
    - `max_accrual_hours_per_year` **Changed** (Breaking ⚠️)
    - `max_hours` **Changed** (Breaking ⚠️)
    - `policy_reset_date` **Added**
    - `policy_type.enum(bereavement)` **Added** (Breaking ⚠️)
    - `policy_type.enum(custom)` **Added** (Breaking ⚠️)
    - `policy_type.enum(floating_holiday)` **Added** (Breaking ⚠️)
    - `policy_type.enum(jury_duty)` **Added** (Breaking ⚠️)
    - `policy_type.enum(learning_and_development)` **Added** (Breaking ⚠️)
    - `policy_type.enum(parental_leave)` **Added** (Breaking ⚠️)
    - `policy_type.enum(personal_day)` **Added** (Breaking ⚠️)
    - `policy_type.enum(volunteer)` **Added** (Breaking ⚠️)
    - `policy_type.enum(weather)` **Added** (Breaking ⚠️)
    - `version` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.time_off_policies.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `time_off_policy_request` **Added** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `accrual_rate_unit` **Changed** (Breaking ⚠️)
    - `accrual_rate` **Changed** (Breaking ⚠️)
    - `accrual_waiting_period_days` **Changed** (Breaking ⚠️)
    - `carryover_limit_hours` **Changed** (Breaking ⚠️)
    - `employees[].balance` **Added**
    - `max_accrual_hours_per_year` **Changed** (Breaking ⚠️)
    - `max_hours` **Changed** (Breaking ⚠️)
    - `policy_reset_date` **Added**
    - `policy_type.enum(bereavement)` **Added** (Breaking ⚠️)
    - `policy_type.enum(custom)` **Added** (Breaking ⚠️)
    - `policy_type.enum(floating_holiday)` **Added** (Breaking ⚠️)
    - `policy_type.enum(jury_duty)` **Added** (Breaking ⚠️)
    - `policy_type.enum(learning_and_development)` **Added** (Breaking ⚠️)
    - `policy_type.enum(parental_leave)` **Added** (Breaking ⚠️)
    - `policy_type.enum(personal_day)` **Added** (Breaking ⚠️)
    - `policy_type.enum(volunteer)` **Added** (Breaking ⚠️)
    - `policy_type.enum(weather)` **Added** (Breaking ⚠️)
    - `version` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.time_off_policies.add_employees()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.employees[].balance` **Changed**
    - `request_body.employees[].uuid` **Changed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `accrual_rate_unit` **Changed** (Breaking ⚠️)
    - `accrual_rate` **Changed** (Breaking ⚠️)
    - `accrual_waiting_period_days` **Changed** (Breaking ⚠️)
    - `carryover_limit_hours` **Changed** (Breaking ⚠️)
    - `employees[].balance` **Added**
    - `max_accrual_hours_per_year` **Changed** (Breaking ⚠️)
    - `max_hours` **Changed** (Breaking ⚠️)
    - `policy_reset_date` **Added**
    - `policy_type.enum(bereavement)` **Added** (Breaking ⚠️)
    - `policy_type.enum(custom)` **Added** (Breaking ⚠️)
    - `policy_type.enum(floating_holiday)` **Added** (Breaking ⚠️)
    - `policy_type.enum(jury_duty)` **Added** (Breaking ⚠️)
    - `policy_type.enum(learning_and_development)` **Added** (Breaking ⚠️)
    - `policy_type.enum(parental_leave)` **Added** (Breaking ⚠️)
    - `policy_type.enum(personal_day)` **Added** (Breaking ⚠️)
    - `policy_type.enum(volunteer)` **Added** (Breaking ⚠️)
    - `policy_type.enum(weather)` **Added** (Breaking ⚠️)
    - `version` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.time_off_policies.remove_employees()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.employees[].uuid` **Changed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `accrual_rate_unit` **Changed** (Breaking ⚠️)
    - `accrual_rate` **Changed** (Breaking ⚠️)
    - `accrual_waiting_period_days` **Changed** (Breaking ⚠️)
    - `carryover_limit_hours` **Changed** (Breaking ⚠️)
    - `employees[].balance` **Added**
    - `max_accrual_hours_per_year` **Changed** (Breaking ⚠️)
    - `max_hours` **Changed** (Breaking ⚠️)
    - `policy_reset_date` **Added**
    - `policy_type.enum(bereavement)` **Added** (Breaking ⚠️)
    - `policy_type.enum(custom)` **Added** (Breaking ⚠️)
    - `policy_type.enum(floating_holiday)` **Added** (Breaking ⚠️)
    - `policy_type.enum(jury_duty)` **Added** (Breaking ⚠️)
    - `policy_type.enum(learning_and_development)` **Added** (Breaking ⚠️)
    - `policy_type.enum(parental_leave)` **Added** (Breaking ⚠️)
    - `policy_type.enum(personal_day)` **Added** (Breaking ⚠️)
    - `policy_type.enum(volunteer)` **Added** (Breaking ⚠️)
    - `policy_type.enum(weather)` **Added** (Breaking ⚠️)
    - `version` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.time_off_policies.update_balance()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.employees[].balance` **Changed** (Breaking ⚠️)
    - `request_body.employees[].uuid` **Changed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `accrual_rate_unit` **Changed** (Breaking ⚠️)
    - `accrual_rate` **Changed** (Breaking ⚠️)
    - `accrual_waiting_period_days` **Changed** (Breaking ⚠️)
    - `carryover_limit_hours` **Changed** (Breaking ⚠️)
    - `employees[].balance` **Added**
    - `max_accrual_hours_per_year` **Changed** (Breaking ⚠️)
    - `max_hours` **Changed** (Breaking ⚠️)
    - `policy_reset_date` **Added**
    - `policy_type.enum(bereavement)` **Added** (Breaking ⚠️)
    - `policy_type.enum(custom)` **Added** (Breaking ⚠️)
    - `policy_type.enum(floating_holiday)` **Added** (Breaking ⚠️)
    - `policy_type.enum(jury_duty)` **Added** (Breaking ⚠️)
    - `policy_type.enum(learning_and_development)` **Added** (Breaking ⚠️)
    - `policy_type.enum(parental_leave)` **Added** (Breaking ⚠️)
    - `policy_type.enum(personal_day)` **Added** (Breaking ⚠️)
    - `policy_type.enum(volunteer)` **Added** (Breaking ⚠️)
    - `policy_type.enum(weather)` **Added** (Breaking ⚠️)
    - `version` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.time_off_policies.deactivate()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `accrual_rate_unit` **Changed** (Breaking ⚠️)
    - `accrual_rate` **Changed** (Breaking ⚠️)
    - `accrual_waiting_period_days` **Changed** (Breaking ⚠️)
    - `carryover_limit_hours` **Changed** (Breaking ⚠️)
    - `employees[].balance` **Added**
    - `max_accrual_hours_per_year` **Changed** (Breaking ⚠️)
    - `max_hours` **Changed** (Breaking ⚠️)
    - `policy_reset_date` **Added**
    - `policy_type.enum(bereavement)` **Added** (Breaking ⚠️)
    - `policy_type.enum(custom)` **Added** (Breaking ⚠️)
    - `policy_type.enum(floating_holiday)` **Added** (Breaking ⚠️)
    - `policy_type.enum(jury_duty)` **Added** (Breaking ⚠️)
    - `policy_type.enum(learning_and_development)` **Added** (Breaking ⚠️)
    - `policy_type.enum(parental_leave)` **Added** (Breaking ⚠️)
    - `policy_type.enum(personal_day)` **Added** (Breaking ⚠️)
    - `policy_type.enum(volunteer)` **Added** (Breaking ⚠️)
    - `policy_type.enum(weather)` **Added** (Breaking ⚠️)
    - `version` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.contractor_payments.get_receipt()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.contractor_payments[].payment_method` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.contractor_payments.fund()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.contractor_payments.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `contractor_payment_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.contractor_payments.list()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.contractor_payments.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.contractor_payments.delete()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.contractor_payments.preview()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `contractor_payments_preview_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `response.expected_debit_date` **Changed** (Breaking ⚠️)
  * `error` **Changed** (Breaking ⚠️)
    - `` **Added**
    - `errors` **Changed** (Breaking ⚠️)
    - `raw_response` **Removed** (Breaking ⚠️)
* `client.contractor_payment_groups.create()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.contractor_payments[].bonus` **Changed** (Breaking ⚠️)
    - `request_body.contractor_payments[].hours` **Changed** (Breaking ⚠️)
    - `request_body.contractor_payments[].reimbursement` **Changed** (Breaking ⚠️)
    - `request_body.contractor_payments[].wage` **Changed** (Breaking ⚠️)
    - `request_body.creation_token` **Changed** (Breaking ⚠️)
    - `request_body.submission_blockers` **Added**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `status[200]` **Removed** (Breaking ⚠️)
    - `status[201]` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.contractor_payment_groups.get_list()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response.[]` **Changed**
    - `credit_blockers` **Added**
    - `partner_owned_disbursement` **Added**
    - `submission_blockers` **Added**
    - `totals.check_amount` **Added**
  *  `error.status[404]` **Added**
* `client.contractor_payment_groups.preview()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `request_body.check_date` **Changed**
    - `request_body.contractor_payments[].bonus` **Changed** (Breaking ⚠️)
    - `request_body.contractor_payments[].hours` **Changed** (Breaking ⚠️)
    - `request_body.contractor_payments[].reimbursement` **Changed** (Breaking ⚠️)
    - `request_body.contractor_payments[].wage` **Changed** (Breaking ⚠️)
    - `request_body.creation_token` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `contractor_payments[].uuid` **Changed** (Breaking ⚠️)
    - `credit_blockers` **Added**
    - `partner_owned_disbursement` **Added**
    - `submission_blockers` **Added**
    - `totals.check_amount` **Added**
    - `uuid` **Changed** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.contractor_payment_groups.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `credit_blockers` **Added**
    - `partner_owned_disbursement` **Added**
    - `submission_blockers` **Added**
    - `totals.check_amount` **Added**
  *  `error.status[404]` **Added**
* `client.contractor_payment_groups.delete()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.contractor_payment_groups.fund()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `response` **Changed**
    - `credit_blockers` **Added**
    - `partner_owned_disbursement` **Added**
    - `submission_blockers` **Added**
    - `totals.check_amount` **Added**
  *  `error.status[404]` **Added**
* `client.company_forms.get_all()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `company_id` **Removed** (Breaking ⚠️)
    - `request` **Added** (Breaking ⚠️)
    - `x_gusto_api_version` **Removed** (Breaking ⚠️)
  *  `response.[].employee_uuid` **Added**
  *  `error.status[404]` **Added**
* `client.company_forms.get()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.employee_uuid` **Added**
  *  `error.status[404]` **Added**
* `client.company_forms.get_pdf()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.company_forms.sign()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  *  `response.employee_uuid` **Added**
  *  `error.status[404]` **Added**
* `client.generated_documents.get()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `document_type` **Changed**
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  *  `error.status[404]` **Added**
* `client.reports.create_custom()`: 
  * `request` **Changed** (Breaking ⚠️)
    - `create_report_body` **Added** (Breaking ⚠️)
    - `request_body` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `x_gusto_api_version.enum(2025_06_15)` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `status[200]` **Removed** (Breaking ⚠️)
    - `status[201]` **Added** (Breaking ⚠️)
  *  `error.status[404]` **Added**
* `client.reports.get_template()`: 
  * `request.x_gusto_api_version` **Changed** (Breaking ⚠️)
    - `enum(2024_04_01)` **Removed** (Breaking ⚠️)
    - `enum(2025_06_15)` **Added**
  * `error` **Changed**
    - `` **Added**
    - `status[422]` **Added**
* `client.employees.get_v1_companies_company_id_employees_payment_details()`: **Added**
* `client.introspection.oauth_access_token()`: **Added**
* `client.time_off_requests.post_v1_companies_company_uuid_time_off_requests()`: **Added**
* `client.time_off_requests.get_v1_companies_company_uuid_time_off_requests()`: **Added**
* `client.time_off_requests.get_v1_companies_company_uuid_time_off_balances()`: **Added**
* `client.time_off_requests.post_v1_companies_company_uuid_time_off_admin_approved_requests()`: **Added**
* `client.reports.get_reports_request_uuid()`: **Added**
* `client.people_batches.post_v1_companies_company_id_people_batches()`: **Added**
* `client.reimbursements.delete_v1_recurring_reimbursements()`: **Added**
* `client.reports.post_payrolls_payroll_uuid_reports_general_ledger()`: **Added**
* `client.reimbursements.get_v1_recurring_reimbursements()`: **Added**
* `client.reimbursements.post_v1_employees_employee_id_recurring_reimbursements()`: **Added**
* `client.reimbursements.get_v1_employees_employee_id_recurring_reimbursements()`: **Added**
* `client.salary_estimates.get_v1_salary_estimates_occupations()`: **Added**
* `client.salary_estimates.post_v1_salary_estimates_uuid_accept()`: **Added**
* `client.salary_estimates.put_v1_salary_estimates_id()`: **Added**
* `client.salary_estimates.get_v1_salary_estimates_id()`: **Added**
* `client.salary_estimates.post_v1_employees_employee_id_salary_estimates()`: **Added**
* `client.information_requests.submit()`: **Added**
* `client.notifications.get_company_notifications()`: **Added**
* `client.employee_benefits.patch_v1_employees_employee_uuid_section603_high_earner_statuses_effective_year()`: **Added**
* `client.employee_benefits.get_v1_employees_employee_uuid_section603_high_earner_statuses_effective_year()`: **Added**
* `client.employee_benefits.post_v1_employees_employee_uuid_section603_high_earner_statuses()`: **Added**
* `client.employee_benefits.get_v1_employees_employee_uuid_section603_high_earner_statuses()`: **Added**
* `client.company_benefits.put_v1_company_benefits_company_benefit_id_contribution_exclusions()`: **Added**
* `client.time_off_requests.get_v1_time_off_requests_time_off_request_uuid()`: **Added**
* `client.time_off_requests.post_v1_companies_company_uuid_time_off_requests_preview()`: **Added**
* `client.company_benefits.get_v1_company_benefits_company_benefit_id_contribution_exclusions()`: **Added**
* `client.reimbursements.put_v1_recurring_reimbursements()`: **Added**
* `client.contractor_payment_groups.patch_v1_contractor_payment_groups_id_partner_disbursements()`: **Added**
* `client.contractor_payment_groups.get_v1_contractor_payment_groups_id_partner_disbursements()`: **Added**
* `client.contractor_payments.get_v1_contractor_payments_contractor_payment_id_pdf()`: **Added**
* `client.payrolls.patch_v1_companies_company_id_payrolls_id_partner_disbursements()`: **Added**
* `client.payrolls.get_v1_companies_company_id_payrolls_id_partner_disbursements()`: **Added**
* `client.payrolls.submit()`: **Added**
* `client.payrolls.calculate()`: **Added**
* `client.payrolls.calculate_gross_up()`: **Added**
* `client.payrolls.skip()`: **Added**
* `client.webhooks.get_v1_webhooks_health_check()`: **Added**
* `client.contractors.delete_v1_contractors_contractor_uuid_termination()`: **Added**
* `client.contractors.post_v1_contractors_contractor_uuid_termination()`: **Added**
* `client.contractors.delete_v1_contractors_contractor_uuid_rehire()`: **Added**
* `client.contractors.post_v1_contractors_contractor_uuid_rehire()`: **Added**
* `client.contractors.get_v1_companies_company_id_contractors_payment_details()`: **Added**
* `client.employee_employments.get_v1_terminations_employee_id()`: **Added**
* `client.reports.post_v1_companies_company_id_reports_employees_annual_fica_wage()`: **Added**
* `client.bank_accounts.delete_v1_companies_company_id_bank_accounts_bank_account_id()`: **Added**
* `client.companies.get_v1_partner_managed_companies_company_uuid_migration_readiness()`: **Added**
* `client.people_batches.get_v1_people_batches_people_batch_uuid()`: **Added**
* `client.time_off_requests.delete_v1_time_off_requests_time_off_request_uuid()`: **Added**
* `client.time_off_requests.put_v1_time_off_requests_time_off_request_uuid_approve()`: **Added**
* `client.time_off_requests.put_v1_time_off_requests_time_off_request_uuid_decline()`: **Added**
* `client.introspection.refresh_token()`: **Removed** (Breaking ⚠️)
* `client.reports.get()`: **Removed** (Breaking ⚠️)
