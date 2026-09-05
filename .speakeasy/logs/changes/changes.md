## Ruby SDK Changes:
* `client.webhooks.list_subscriptions()`:  `response.[].subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.webhooks.create_subscription()`: 
  *  `request_body.subscription_types[].enum(time_off_request)` **Added**
  *  `response.subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.webhooks.get_subscription()`:  `response.subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.webhooks.update_subscription()`: 
  *  `request_body.subscription_types[].enum(time_off_request)` **Added**
  *  `response.subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.webhooks.verify()`:  `response.subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.locations.retrieve()`:  `response.warnings` **Added**
* `client.employees.list()`:  `response.[].jobs[].location.warnings` **Added**
* `client.reports.get_v1_bulk_reports_request_uuid()`: **Added**
* `client.contractor_payments.get_v1_contractors_contractor_uuid_payments()`: **Added**
* `client.contractor_payments.get_v1_contractor_payments_contractor_payment_id_pdf()`: **Added**
* `client.contractor_payments.list()`: **Added**
* `client.contractor_payments.create()`: **Added**
* `client.contractor_payments.get()`: **Added**
* `client.contractor_payments.delete()`: **Added**
* `client.contractor_payments.preview()`: **Added**
* `client.contractor_payments.get_receipt()`: **Added**
* `client.contractor_payments.fund()`: **Added**
* `client.member_portal_invitations.post_v1_employees_employee_id_member_portal_invitations()`: **Added**
* `client.member_portal_invitations.get_v1_employees_employee_id_member_portal_invitations()`: **Added**
* `client.member_portal_invitations.delete_v1_employees_employee_id_member_portal_invitations()`: **Added**
* `client.member_portal_invitations.post_v1_contractors_contractor_uuid_member_portal_invitations()`: **Added**
* `client.member_portal_invitations.get_v1_contractors_contractor_uuid_member_portal_invitations()`: **Added**
* `client.member_portal_invitations.delete_v1_contractors_contractor_uuid_member_portal_invitations()`: **Added**
* `client.payroll_cancellations.post_v1_payroll_batches()`: **Added**
* `client.payroll_cancellations.get_v1_payroll_batches_payroll_batch_uuid()`: **Added**
* `client.reverse_wire_transactions.get_reverse_wire_transactions()`: **Added**
* `client.tax_payments.get_tax_payments()`: **Added**
* `client.tax_payments.get_tax_payment()`: **Added**
* `client.contractor_payments.get_receipt()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.fund()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.list()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.create()`: **Removed** (Breaking ⚠️)
* `client.pay_schedules.get_preview()`: 
  *  `request.pay_schedule_uuid` **Added**
* `client.contractor_payments.delete()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.preview()`: **Removed** (Breaking ⚠️)
* `client.contractor_payments.get_v1_contractor_payments_contractor_payment_id_pdf()`: **Removed** (Breaking ⚠️)
* `client.companies.suspensions.suspend()`: 
  * `request_body.leaving_for` **Changed**
    - `enum(other_peo)` **Added**
    - `enum(toast)` **Added**
* `client.federal_tax_details.update()`:  `error.status[403]` **Added**
* `client.locations.get()`:  `response.[].warnings` **Added**
* `client.locations.create()`:  `response.warnings` **Added**
* `client.companies.put_v1_partner_managed_companies_company_uuid_disassociate()`: **Added**
* `client.reports.post_v1_bulk_reports()`: **Added**
* `client.locations.update()`:  `response.warnings` **Added**
* `client.contractor_payments.get()`: **Removed** (Breaking ⚠️)
* `client.employees.create()`:  `response.jobs[].location.warnings` **Added**
* `client.employees.create_historical()`:  `response.jobs[].location.warnings` **Added**
* `client.employees.get()`:  `response.jobs[].location.warnings` **Added**
* `client.employees.update()`:  `response.jobs[].location.warnings` **Added**
* `client.employees.get_onboarding_status()`:  `response.blockers` **Added**
* `client.employees.update_onboarding_status()`:  `response.blockers` **Added**
* `client.historical_employees.update()`:  `response.jobs[].location.warnings` **Added**
* `client.employee_addresses.get()`:  `response.[].warnings` **Added**
* `client.employee_addresses.create()`:  `response.warnings` **Added**
* `client.employee_addresses.retrieve_home_address()`:  `response.warnings` **Added**
* `client.employee_addresses.update()`:  `response.warnings` **Added**
* `client.jobs_and_compensations.get_jobs()`:  `response.[].location.warnings` **Added**
* `client.jobs_and_compensations.create_job()`:  `response.location.warnings` **Added**
* `client.jobs_and_compensations.get_job()`:  `response.location.warnings` **Added**
* `client.jobs_and_compensations.update()`:  `response.location.warnings` **Added**
* `client.contractors.list()`:  `response.[].work_email` **Added**
* `client.contractors.create()`: 
  *  `request.contractor_create_request_body.work_email` **Added**
  *  `response.work_email` **Added**
* `client.contractors.get()`:  `response.work_email` **Added**
* `client.contractors.update()`: 
  *  `request.contractor_update_request_body.work_email` **Added**
  *  `response.work_email` **Added**
* `client.contractors.get_address()`:  `response.warnings` **Added**
* `client.contractors.update_address()`:  `response.warnings` **Added**
* `client.contractors.post_v1_contractors_contractor_uuid_rehire()`:  `error.status[422]` **Added**
* `client.contractors.delete_v1_contractors_contractor_uuid_rehire()`:  `error.status[422]` **Added**
* `client.contractors.post_v1_contractors_contractor_uuid_termination()`:  `error.status[422]` **Added**
* `client.contractors.delete_v1_contractors_contractor_uuid_termination()`:  `error.status[422]` **Added**
* `client.payrolls.create_off_cycle()`:  `response.employee_compensations[].custom_withholdings` **Added**
* `client.payrolls.get_approved_reversals()`:  `request.x_gusto_api_version` **Changed**
* `client.payrolls.get()`:  `response.employee_compensations[].custom_withholdings` **Added**
* `client.payrolls.update()`: 
  *  `request.payroll_update.employee_compensations[].custom_withholdings` **Added**
  *  `response.employee_compensations[].custom_withholdings` **Added**
* `client.payrolls.prepare()`:  `response.employee_compensations[].custom_withholdings` **Added**
* `client.payrolls.get_receipt()`: `request` **Changed**
    - `page` **Added**
    - `per` **Added**
* `client.payrolls.skip()`:  `error.status[409]` **Added**
* `client.contractor_payment_groups.patch_v1_contractor_payment_groups_id_partner_disbursements()`: 
  * `request_body.disbursements[].payment_method` **Changed**
    - `enum(correction_payment)` **Added**
    - `enum(historical_payment)` **Added**
* `client.generated_documents.get()`:  `request.x_gusto_api_version` **Changed**
* `client.reports.create_custom()`: `request.create_report_body` **Changed**
    - `columns[].enum(additional_earnings)` **Added**
    - `columns[].enum(employee_state_income_tax)` **Added**
    - `date_filter_type` **Added**
    - `groupings` **Changed**
* `client.tax_requirements.get()`: `response.requirement_sets[].requirements[]` **Changed**
    - `default_value_applied` **Added**
    - `payroll_blocking` **Added**
