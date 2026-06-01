## Ruby SDK Changes:
* `client.payrolls.get()`: 
  *  `request.sort_by` **Changed** (Breaking ⚠️)
* `client.company_forms.get_all()`: 
  *  `request.sort_by` **Changed** (Breaking ⚠️)
* `client.companies.get()`: `response.funding_type` **Changed** (Breaking ⚠️)
    - `enum(brex)` **Removed** (Breaking ⚠️)
    - `enum(line_of_credit)` **Added**
    - `enum(partner_disbursement)` **Added**
    - `enum(rtp)` **Added**
* `client.companies.update()`: `response.funding_type` **Changed** (Breaking ⚠️)
    - `enum(brex)` **Removed** (Breaking ⚠️)
    - `enum(line_of_credit)` **Added**
    - `enum(partner_disbursement)` **Added**
    - `enum(rtp)` **Added**
* `client.payrolls.prepare()`: 
  *  `request.sort_by` **Changed** (Breaking ⚠️)
* `client.contractor_payments.get_v1_contractor_payments_contractor_payment_id_pdf()`:  `error.status[404]` **Added**
* `client.reports.create_custom()`: 
  * `request.body.columns[]` **Changed**
    - `enum(employee_uuid)` **Added**
    - `enum(payroll_uuid)` **Added**
* `client.employee_tax_setup.update_state_taxes()`:  `response.[].uuid` **Added**
* `client.employee_payment_method.delete_bank_account()`: `error` **Changed**
    - `` **Added**
* `client.earning_types.delete()`:  `error.status[404]` **Added**
* `client.external_payrolls.finalize_tax_liabilities()`: `error` **Changed**
    - `` **Added**
* `client.external_payrolls.delete()`: `error` **Changed**
    - `` **Added**
* `client.payroll_digests.post_v1_payroll_digests()`: **Added**
* `client.payroll_digests.get_v1_payroll_digests_payroll_digest_uuid()`: **Added**
* `client.employee_tax_setup.get_state_taxes()`:  `response.[].uuid` **Added**
* `client.company_benefits.delete()`: `error` **Changed**
    - `` **Added**
* `client.company_benefits.get_employee_benefits()`:  `response.[].deduction_reduces_taxable_income` **Changed**
* `client.company_benefits.update_employee_benefits()`: 
  *  `request.body.employee_benefits[].deduction_reduces_taxable_income` **Changed**
  *  `response.[].deduction_reduces_taxable_income` **Changed**
* `client.employee_benefits.get()`:  `response.[].deduction_reduces_taxable_income` **Changed**
* `client.employee_benefits.create()`:  `response.deduction_reduces_taxable_income` **Changed**
* `client.employee_benefits.retrieve()`:  `response.deduction_reduces_taxable_income` **Changed**
* `client.employee_benefits.update()`: 
  *  `request.body.deduction_reduces_taxable_income` **Changed**
  *  `response.deduction_reduces_taxable_income` **Changed**
* `client.employee_benefits.delete()`: `error` **Changed**
    - `` **Added**
* `client.information_requests.get_information_requests()`:  `request.sort_by` **Added**
* `client.time_off_requests.delete_v1_time_off_requests_time_off_request_uuid()`: `error` **Changed**
    - `` **Added**
