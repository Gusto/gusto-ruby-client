## Ruby SDK Changes:
* `client.jobs_and_compensations.get_job()`: `response` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.webhooks.verify()`:  `response.subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.webhooks.update_subscription()`: 
  *  `request_body.subscription_types[].enum(time_off_request)` **Added**
  *  `response.subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.webhooks.get_subscription()`:  `response.subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.webhooks.create_subscription()`: 
  *  `request_body.subscription_types[].enum(time_off_request)` **Added**
  *  `response.subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.webhooks.list_subscriptions()`:  `response.[].subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.historical_employees.update()`: `response.jobs[]` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.payrolls.prepare()`: `response` **Changed** (Breaking ⚠️)
    - `employee_compensations[].custom_withholdings` **Added**
    - `employee_compensations[].fixed_compensations[].breakdowns` **Added**
    - `employee_compensations[].hourly_compensations[].breakdowns` **Added**
    - `pay_period.end_date` **Changed** (Breaking ⚠️)
    - `pay_period.start_date` **Changed** (Breaking ⚠️)
    - `workweeks` **Added**
* `client.payrolls.cancel()`: `response.pay_period` **Changed** (Breaking ⚠️)
    - `end_date` **Changed** (Breaking ⚠️)
    - `start_date` **Changed** (Breaking ⚠️)
* `client.payrolls.create_off_cycle()`: 
  *  `request_body.employee_uuids` **Changed** (Breaking ⚠️)
  * `response` **Changed** (Breaking ⚠️)
    - `employee_compensations[].custom_withholdings` **Added**
    - `employee_compensations[].fixed_compensations[].breakdowns` **Added**
    - `employee_compensations[].hourly_compensations[].breakdowns` **Added**
    - `pay_period.end_date` **Changed** (Breaking ⚠️)
    - `pay_period.start_date` **Changed** (Breaking ⚠️)
    - `workweeks` **Added**
* `client.payrolls.list()`: `response.[].pay_period` **Changed** (Breaking ⚠️)
    - `end_date` **Changed** (Breaking ⚠️)
    - `start_date` **Changed** (Breaking ⚠️)
* `client.payrolls.update()`: 
  * `request.payroll_update.employee_compensations[]` **Changed**
    - `custom_withholdings` **Added**
    - `fixed_compensations[].breakdowns` **Added**
    - `hourly_compensations[].breakdowns` **Added**
  * `response` **Changed** (Breaking ⚠️)
    - `employee_compensations[].custom_withholdings` **Added**
    - `employee_compensations[].fixed_compensations[].breakdowns` **Added**
    - `employee_compensations[].hourly_compensations[].breakdowns` **Added**
    - `pay_period.end_date` **Changed** (Breaking ⚠️)
    - `pay_period.start_date` **Changed** (Breaking ⚠️)
    - `workweeks` **Added**
  * `errors[]` **Changed** (Breaking ⚠️)
    - `errors` **Removed** (Breaking ⚠️)
    - `metadata` **Removed** (Breaking ⚠️)
* `client.payrolls.get()`: `response` **Changed** (Breaking ⚠️)
    - `employee_compensations[].benefits[].company_contribution` **Changed** (Breaking ⚠️)
    - `employee_compensations[].benefits[].employee_deduction` **Changed** (Breaking ⚠️)
    - `employee_compensations[].custom_withholdings` **Added**
    - `employee_compensations[].deductions[].amount` **Changed** (Breaking ⚠️)
    - `employee_compensations[].fixed_compensations[].breakdowns` **Added**
    - `employee_compensations[].hourly_compensations[].breakdowns` **Added**
    - `employee_compensations[].pay_adjustments` **Added**
    - `employee_compensations[].taxes[].amount` **Changed** (Breaking ⚠️)
    - `pay_period.end_date` **Changed** (Breaking ⚠️)
    - `pay_period.start_date` **Changed** (Breaking ⚠️)
* `client.employees.create_historical()`: `response.jobs[]` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.employees.create()`: `response.jobs[]` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.employees.list()`: `response.[].jobs[]` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.employees.update()`: `response.jobs[]` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.employees.get()`: `response.jobs[]` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.jobs_and_compensations.create_job()`: `response` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.jobs_and_compensations.get_jobs()`: `response.[]` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.jobs_and_compensations.update()`: `response` **Changed** (Breaking ⚠️)
    - `current_compensation_uuid` **Changed** (Breaking ⚠️)
    - `location.warnings` **Added**
* `client.tax_payments.get_tax_payment()`: **Added**
* `client.member_portal_invitations.post_v1_contractors_contractor_uuid_member_portal_invitations()`: **Added**
* `client.contractor_payments.list()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.create()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.get()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.delete()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.preview()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.get_receipt()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.fund()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.get_v1_contractor_payments_contractor_payment_id_pdf()`: **Removed** (Breaking ⚠️)
* `client.companies.suspensions.suspend()`: 
  * `request_body.leaving_for` **Changed**
    - `enum(other_peo)` **Added**
    - `enum(toast)` **Added**
* `client.tax_requirements.get()`: `response.requirement_sets[].requirements[]` **Changed**
    - `default_value_applied` **Added**
    - `payroll_blocking` **Added**
* `client.federal_tax_details.update()`:  `error.status[403]` **Added**
* `client.tax_payments.get_tax_payments()`: **Added**
* `client.reverse_wire_transactions.get_reverse_wire_transactions()`: **Added**
* `client.payroll_cancellations.get_v1_payroll_batches_payroll_batch_uuid()`: **Added**
* `client.payroll_cancellations.post_v1_payroll_batches()`: **Added**
* `client.contractors.get_address()`:  `response.warnings` **Added**
* `client.contractors.update_address()`:  `response.warnings` **Added**
* `client.contractors.post_v1_contractors_contractor_uuid_rehire()`:  `error.status[422]` **Added**
* `client.contractors.delete_v1_contractors_contractor_uuid_rehire()`:  `error.status[422]` **Added**
* `client.contractors.post_v1_contractors_contractor_uuid_termination()`:  `error.status[422]` **Added**
* `client.contractors.delete_v1_contractors_contractor_uuid_termination()`:  `error.status[422]` **Added**
* `client.contractors.get()`:  `response.work_email` **Added**
* `client.contractors.update()`: 
  *  `request.contractor_update_request_body.work_email` **Added**
  *  `response.work_email` **Added**
* `client.contractors.list()`:  `response.[].work_email` **Added**
* `client.contractors.create()`: 
  *  `request.contractor_create_request_body.work_email` **Added**
  *  `response.work_email` **Added**
* `client.contractor_payment_groups.patch_v1_contractor_payment_groups_id_partner_disbursements()`: 
  * `request_body.disbursements[].payment_method` **Changed**
    - `enum(correction_payment)` **Added**
    - `enum(historical_payment)` **Added**
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
* `client.member_portal_invitations.delete_v1_contractors_contractor_uuid_member_portal_invitations()`: **Added**
* `client.member_portal_invitations.get_v1_contractors_contractor_uuid_member_portal_invitations()`: **Added**
* `client.companies.put_v1_partner_managed_companies_company_uuid_disassociate()`: **Added**
* `client.member_portal_invitations.delete_v1_employees_employee_id_member_portal_invitations()`: **Added**
* `client.employees.get_onboarding_status()`:  `response.blockers` **Added**
* `client.employees.update_onboarding_status()`:  `response.blockers` **Added**
* `client.member_portal_invitations.get_v1_employees_employee_id_member_portal_invitations()`: **Added**
* `client.reports.create_custom()`: `request.create_report_body` **Changed**
    - `columns[].enum(additional_earnings)` **Added**
    - `columns[].enum(employee_state_income_tax)` **Added**
    - `date_filter_type` **Added**
    - `groupings` **Changed**
* `client.payrolls.get_approved_reversals()`:  `request.x_gusto_api_version` **Changed**
* `client.member_portal_invitations.post_v1_employees_employee_id_member_portal_invitations()`: **Added**
* `client.contractor_payments.fund()`: **Added**
* `client.contractor_payments.get_receipt()`: **Added**
* `client.contractor_payments.preview()`: **Added**
* `client.payrolls.get_receipt()`: `request` **Changed**
    - `page` **Added**
    - `per` **Added**
* `client.contractor_payments.delete()`: **Added**
* `client.contractor_payments.get()`: **Added**
* `client.payrolls.skip()`:  `error.status[409]` **Added**
* `client.generated_documents.get()`:  `request.x_gusto_api_version` **Changed**
* `client.contractor_payments.create()`: **Added**
* `client.employee_addresses.get()`:  `response.[].warnings` **Added**
* `client.employee_addresses.create()`:  `response.warnings` **Added**
* `client.employee_addresses.retrieve_home_address()`:  `response.warnings` **Added**
* `client.employee_addresses.update()`:  `response.warnings` **Added**
* `client.locations.retrieve()`:  `response.warnings` **Added**
* `client.locations.update()`:  `response.warnings` **Added**
* `client.locations.get()`:  `response.[].warnings` **Added**
* `client.locations.create()`:  `response.warnings` **Added**
* `client.pay_schedules.get_all()`:  `response.[].workweek_start_day` **Added**
* `client.pay_schedules.create()`: 
  *  `request.pay_schedule_create_request.workweek_start_day` **Added**
  *  `response.workweek_start_day` **Added**
* `client.pay_schedules.get_preview()`: 
  *  `request.pay_schedule_uuid` **Added**
* `client.pay_schedules.get()`:  `response.workweek_start_day` **Added**
* `client.pay_schedules.update()`: 
  *  `request.pay_schedule_update_request.workweek_start_day` **Added**
  *  `response.workweek_start_day` **Added**
* `client.contractor_payments.list()`: **Added**
* `client.contractor_payments.get_v1_contractor_payments_contractor_payment_id_pdf()`: **Added**
* `client.contractor_payments.get_v1_contractors_contractor_uuid_payments()`: **Added**
* `client.reports.get_v1_bulk_reports_request_uuid()`: **Added**
* `client.reports.post_v1_bulk_reports()`: **Added**
