## Ruby SDK Changes:
* `client.pay_schedules.get_all()`: `response.[]` **Changed** (Breaking ⚠️)
    - `auto_payroll_enablement_blockers` **Removed** (Breaking ⚠️)
    - `auto_payroll` **Removed** (Breaking ⚠️)
    - `day_1` **Deprecated**
    - `day_2` **Deprecated**
    - `workweek_start_day` **Added**
* `client.payrolls.cancel()`: `response.pay_period` **Changed** (Breaking ⚠️)
    - `end_date` **Changed** (Breaking ⚠️)
    - `start_date` **Changed** (Breaking ⚠️)
* `client.payrolls.prepare()`: `response` **Changed** (Breaking ⚠️)
    - `employee_compensations[].custom_withholdings` **Added**
    - `employee_compensations[].fixed_compensations[].breakdowns` **Added**
    - `employee_compensations[].hourly_compensations[].breakdowns` **Added**
    - `employee_compensations[].paid_time_off[].approved_request_hours` **Added**
    - `pay_period.end_date` **Changed** (Breaking ⚠️)
    - `pay_period.start_date` **Changed** (Breaking ⚠️)
    - `workweeks` **Added**
* `client.payrolls.update()`: 
  * `request.payroll_update.employee_compensations[]` **Changed**
    - `custom_withholdings` **Added**
    - `fixed_compensations[].breakdowns` **Added**
    - `hourly_compensations[].breakdowns` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `employee_compensations[].custom_withholdings` **Added**
    - `employee_compensations[].fixed_compensations[].breakdowns` **Added**
    - `employee_compensations[].hourly_compensations[].breakdowns` **Added**
    - `employee_compensations[].paid_time_off[].approved_request_hours` **Added**
    - `pay_period.end_date` **Changed** (Breaking ⚠️)
    - `pay_period.start_date` **Changed** (Breaking ⚠️)
    - `workweeks` **Added**
  *  `error.status[409]` **Added**
* `client.payrolls.get()`: `response` **Changed** (Breaking ⚠️)
    - `employee_compensations[].custom_withholdings` **Added**
    - `employee_compensations[].fixed_compensations[].breakdowns` **Added**
    - `employee_compensations[].hourly_compensations[].breakdowns` **Added**
    - `employee_compensations[].paid_time_off[].approved_request_hours` **Added**
    - `employee_compensations[].pay_adjustments` **Added**
    - `pay_period.end_date` **Changed** (Breaking ⚠️)
    - `pay_period.start_date` **Changed** (Breaking ⚠️)
* `client.payrolls.create_off_cycle()`: `response` **Changed** (Breaking ⚠️)
    - `employee_compensations[].custom_withholdings` **Added**
    - `employee_compensations[].fixed_compensations[].breakdowns` **Added**
    - `employee_compensations[].hourly_compensations[].breakdowns` **Added**
    - `employee_compensations[].paid_time_off[].approved_request_hours` **Added**
    - `pay_period.end_date` **Changed** (Breaking ⚠️)
    - `pay_period.start_date` **Changed** (Breaking ⚠️)
    - `workweeks` **Added**
* `client.payrolls.list()`: `response.[].pay_period` **Changed** (Breaking ⚠️)
    - `end_date` **Changed** (Breaking ⚠️)
    - `start_date` **Changed** (Breaking ⚠️)
* `client.webhooks.verify()`: `response.subscription_types[]` **Changed** (Breaking ⚠️)
    - `enum(time_off_request)` **Added** (Breaking ⚠️)
    - `enum(time_sheets_batch)` **Added** (Breaking ⚠️)
* `client.webhooks.update_subscription()`: 
  * `request_body.subscription_types[]` **Changed**
    - `enum(time_off_request)` **Added**
    - `enum(time_sheets_batch)` **Added**
  * `response.subscription_types[]` **Changed** (Breaking ⚠️)
    - `enum(time_off_request)` **Added** (Breaking ⚠️)
    - `enum(time_sheets_batch)` **Added** (Breaking ⚠️)
* `client.webhooks.get_subscription()`: `response.subscription_types[]` **Changed** (Breaking ⚠️)
    - `enum(time_off_request)` **Added** (Breaking ⚠️)
    - `enum(time_sheets_batch)` **Added** (Breaking ⚠️)
* `client.webhooks.create_subscription()`: 
  * `request_body.subscription_types[]` **Changed**
    - `enum(time_off_request)` **Added**
    - `enum(time_sheets_batch)` **Added**
  * `response.subscription_types[]` **Changed** (Breaking ⚠️)
    - `enum(time_off_request)` **Added** (Breaking ⚠️)
    - `enum(time_sheets_batch)` **Added** (Breaking ⚠️)
* `client.webhooks.list_subscriptions()`: `response.[].subscription_types[]` **Changed** (Breaking ⚠️)
    - `enum(time_off_request)` **Added** (Breaking ⚠️)
    - `enum(time_sheets_batch)` **Added** (Breaking ⚠️)
* `client.jobs_and_compensations.update()`: `response` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.jobs_and_compensations.get_job()`: `response` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.jobs_and_compensations.create_job()`: `response` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.jobs_and_compensations.get_jobs()`: `response.[]` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.historical_employees.update()`: `response.jobs[]` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.employees.update()`: `response.jobs[]` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.employees.get()`: `response` **Changed** (Breaking ⚠️)
    - `additional_properties` **Added**
    - `all_home_addresses` **Added**
    - `company_name` **Added**
    - `current_home_address` **Added**
    - `jobs[].current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `jobs[].location.warnings` **Added**
* `client.employees.create_historical()`: `response.jobs[]` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.employees.create()`: `response.jobs[]` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.employees.list()`: `response.[]` **Changed** (Breaking ⚠️)
    - `company_name` **Added**
    - `jobs[].current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `jobs[].location.warnings` **Added**
* `client.tax_filings.get_tax_filing()`: **Added**
* `client.member_portal_invitations.get_v1_employees_employee_id_member_portal_invitations()`: **Added**
* `client.tax_payments.get_tax_payments()`: **Added**
* `client.tax_payments.get_tax_payment()`: **Added**
* `client.treasury_tipped_occupation_codes.get_companies_company_uuid_treasury_tipped_occupation_codes()`: **Added**
* `client.contractor_payments.get_receipt()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.fund()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.list()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.create()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.get()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.delete()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.preview()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.get_v1_contractor_payments_contractor_payment_id_pdf()`: **Removed** (Breaking ⚠️)
* `client.companies.suspensions.suspend()`: 
  * `request_body.leaving_for` **Changed**
    - `enum(mercury)` **Added**
    - `enum(other_peo)` **Added**
    - `enum(rippling_peo)` **Added**
    - `enum(sequoia_one)` **Added**
    - `enum(toast)` **Added**
* `client.federal_tax_details.update()`:  `error.status[403]` **Added**
* `client.locations.get()`:  `response.[].warnings` **Added**
* `client.locations.create()`:  `response.warnings` **Added**
* `client.locations.retrieve()`:  `response.warnings` **Added**
* `client.locations.update()`:  `response.warnings` **Added**
* `client.tax_filings.get_tax_filings()`: **Added**
* `client.pay_schedules.create()`: 
  * `request.pay_schedule_create_request` **Changed**
    - `day_1` **Deprecated**
    - `day_2` **Deprecated**
    - `first_pay_period_end_day` **Added**
    - `first_pay_period_pay_day` **Added**
    - `second_pay_period_end_day` **Added**
    - `second_pay_period_pay_day` **Added**
    - `workweek_start_day` **Added**
  * `response` **Changed**
    - `day_1` **Deprecated**
    - `day_2` **Deprecated**
    - `first_pay_period_end_day` **Added**
    - `first_pay_period_pay_day` **Added**
    - `second_pay_period_end_day` **Added**
    - `second_pay_period_pay_day` **Added**
    - `workweek_start_day` **Added**
* `client.pay_schedules.get_preview()`: `request` **Changed**
    - `day_1` **Deprecated**
    - `day_2` **Deprecated**
    - `first_pay_period_end_day` **Added**
    - `first_pay_period_pay_day` **Added**
    - `pay_schedule_uuid` **Added**
    - `second_pay_period_end_day` **Added**
    - `second_pay_period_pay_day` **Added**
* `client.pay_schedules.get()`: `response` **Changed**
    - `day_1` **Deprecated**
    - `day_2` **Deprecated**
    - `first_pay_period_end_day` **Added**
    - `first_pay_period_pay_day` **Added**
    - `second_pay_period_end_day` **Added**
    - `second_pay_period_pay_day` **Added**
    - `workweek_start_day` **Added**
* `client.pay_schedules.update()`: 
  * `request.pay_schedule_update_request` **Changed**
    - `day_1` **Deprecated**
    - `day_2` **Deprecated**
    - `first_pay_period_end_day` **Added**
    - `first_pay_period_pay_day` **Added**
    - `second_pay_period_end_day` **Added**
    - `second_pay_period_pay_day` **Added**
    - `workweek_start_day` **Added**
  * `response` **Changed**
    - `day_1` **Deprecated**
    - `day_2` **Deprecated**
    - `first_pay_period_end_day` **Added**
    - `first_pay_period_pay_day` **Added**
    - `second_pay_period_end_day` **Added**
    - `second_pay_period_pay_day` **Added**
    - `workweek_start_day` **Added**
* `client.reverse_wire_transactions.get_reverse_wire_transactions()`: **Added**
* `client.payroll_cancellations.get_v1_payroll_batches_payroll_batch_uuid()`: **Added**
* `client.payroll_cancellations.post_v1_payroll_batches()`: **Added**
* `client.member_portal_invitations.delete_v1_contractors_contractor_uuid_member_portal_invitations()`: **Added**
* `client.member_portal_invitations.get_v1_contractors_contractor_uuid_member_portal_invitations()`: **Added**
* `client.employees.get_onboarding_status()`:  `response.blockers` **Added**
* `client.employees.update_onboarding_status()`:  `response.blockers` **Added**
* `client.member_portal_invitations.post_v1_contractors_contractor_uuid_member_portal_invitations()`: **Added**
* `client.employee_addresses.get()`:  `response.[].warnings` **Added**
* `client.employee_addresses.create()`:  `response.warnings` **Added**
* `client.employee_addresses.retrieve_home_address()`:  `response.warnings` **Added**
* `client.employee_addresses.update()`:  `response.warnings` **Added**
* `client.member_portal_invitations.delete_v1_employees_employee_id_member_portal_invitations()`: **Added**
* `client.companies.put_v1_partner_managed_companies_company_uuid_disassociate()`: **Added**
* `client.member_portal_invitations.post_v1_employees_employee_id_member_portal_invitations()`: **Added**
* `client.contractor_payments.fund()`: **Added**
* `client.earning_types.list()`: `response.default[]` **Changed**
    - `category` **Added**
    - `included_in_overtime_pay` **Added**
* `client.earning_types.create()`: 
  * `request_body` **Changed**
    - `category` **Added**
    - `included_in_overtime_pay` **Added**
  * `response` **Changed**
    - `category` **Added**
    - `included_in_overtime_pay` **Added**
* `client.earning_types.update()`: 
  * `request_body` **Changed**
    - `category` **Added**
    - `included_in_overtime_pay` **Added**
  * `response` **Changed**
    - `category` **Added**
    - `included_in_overtime_pay` **Added**
* `client.contractors.list()`: `response.[]` **Changed**
    - `additional_properties` **Added**
    - `company_name` **Added**
    - `work_email` **Added**
* `client.contractors.create()`: 
  *  `request.contractor_create_request_body.work_email` **Added**
  *  `response.work_email` **Added**
* `client.contractors.get()`: `response` **Changed**
    - `additional_properties` **Added**
    - `company_name` **Added**
    - `work_email` **Added**
* `client.contractors.update()`: 
  *  `request.contractor_update_request_body.work_email` **Added**
  *  `response.work_email` **Added**
* `client.contractors.get_address()`:  `response.warnings` **Added**
* `client.contractors.update_address()`:  `response.warnings` **Added**
* `client.contractors.post_v1_contractors_contractor_uuid_rehire()`:  `error.status[422]` **Added**
* `client.contractors.delete_v1_contractors_contractor_uuid_rehire()`:  `error.status[422]` **Added**
* `client.contractors.post_v1_contractors_contractor_uuid_termination()`:  `error.status[422]` **Added**
* `client.contractors.delete_v1_contractors_contractor_uuid_termination()`:  `error.status[422]` **Added**
* `client.contractor_payments.get_receipt()`: **Added**
* `client.contractor_payments.preview()`: **Added**
* `client.contractor_payments.delete()`: **Added**
* `client.contractor_payments.get()`: **Added**
* `client.contractor_payments.create()`: **Added**
* `client.contractor_payments.list()`: **Added**
* `client.contractor_payments.get_v1_contractor_payments_contractor_payment_id_pdf()`: **Added**
* `client.payrolls.get_approved_reversals()`:  `request.x_gusto_api_version` **Changed**
* `client.contractor_payments.get_v1_contractors_contractor_uuid_payments()`: **Added**
* `client.contractor_payment_groups.post_v1_contractor_payment_groups_contractor_payment_group_uuid_generated_documents_printable_contractor_payment_checks()`: **Added**
* `client.reports.get_v1_bulk_reports_request_uuid()`: **Added**
* `client.payrolls.get_receipt()`: `request` **Changed**
    - `page` **Added**
    - `per` **Added**
* `client.payrolls.skip()`:  `error.status[409]` **Added**
* `client.reports.post_v1_bulk_reports()`: **Added**
* `client.time_off_policies.add_employees()`:  `error.status[409]` **Added**
* `client.time_off_policies.remove_employees()`:  `error.status[409]` **Added**
* `client.contractor_payment_groups.patch_v1_contractor_payment_groups_id_partner_disbursements()`: 
  * `request_body.disbursements[].payment_method` **Changed**
    - `enum(correction_payment)` **Added**
    - `enum(historical_payment)` **Added**
* `client.generated_documents.get()`: `request` **Changed**
    - `document_type.enum(printable_contractor_payment_checks)` **Added**
    - `x_gusto_api_version` **Changed**
* `client.reports.create_custom()`: `request.create_report_body` **Changed**
    - `columns[].enum(additional_earnings)` **Added**
    - `columns[].enum(employee_state_income_tax)` **Added**
    - `date_filter_type` **Added**
    - `groupings` **Changed**
* `client.tax_requirements.get()`: `response.requirement_sets[].requirements[]` **Changed**
    - `default_value_applied` **Added**
    - `payroll_blocking` **Added**
