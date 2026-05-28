## Ruby SDK Changes:
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
* `client.payroll_digests.post_v1_payroll_digests()`: **Added**
* `client.payroll_digests.get_v1_payroll_digests_payroll_digest_uuid()`: **Added**
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
