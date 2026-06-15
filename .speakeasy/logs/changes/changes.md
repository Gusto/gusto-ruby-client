## Ruby SDK Changes:
* `client.webhooks.verify()`:  `response.subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.webhooks.get_subscription()`:  `response.subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.webhooks.update_subscription()`: 
  *  `request_body.subscription_types[].enum(time_off_request)` **Added**
  *  `response.subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.webhooks.list_subscriptions()`:  `response.[].subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.webhooks.create_subscription()`: 
  *  `request_body.subscription_types[].enum(time_off_request)` **Added**
  *  `response.subscription_types[].enum(time_off_request)` **Added** (Breaking ⚠️)
* `client.contractors.delete_v1_contractors_contractor_uuid_rehire()`:  `error.status[422]` **Added**
* `client.pay_schedules.get_preview()`: 
  *  `request.pay_schedule_uuid` **Added**
* `client.contractors.post_v1_contractors_contractor_uuid_rehire()`:  `error.status[422]` **Added**
* `client.employees.update_onboarding_status()`:  `response.blockers` **Added**
* `client.contractors.delete_v1_contractors_contractor_uuid_termination()`:  `error.status[422]` **Added**
* `client.contractors.post_v1_contractors_contractor_uuid_termination()`:  `error.status[422]` **Added**
* `client.employees.get_onboarding_status()`:  `response.blockers` **Added**
* `client.contractor_payments.get_v1_contractors_contractor_uuid_payments()`: **Added**
* `client.payrolls.get_approved_reversals()`:  `request.x_gusto_api_version` **Changed**
* `client.payrolls.update()`: 
  *  `request.payroll_update.employee_compensations[].custom_withholdings` **Added**
* `client.generated_documents.get()`:  `request.x_gusto_api_version` **Changed**
