# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

module OpenApiSDK
  module Shared
    autoload :VersionHeader, 'open_api_sdk/models/shared/versionheader.rb'
    autoload :Authentication, 'open_api_sdk/models/shared/authentication.rb'
    autoload :UnprocessableEntityErrorObject, 'open_api_sdk/models/shared/unprocessable_entity_error_object.rb'
    autoload :Metadata, 'open_api_sdk/models/shared/metadata.rb'
    autoload :EntityErrorObjectMetadata, 'open_api_sdk/models/shared/entity_error_object_metadata.rb'
    autoload :Errors, 'open_api_sdk/models/shared/errors.rb'
    autoload :EntityErrorObject, 'open_api_sdk/models/shared/entity_error_object.rb'
    autoload :EntityType, 'open_api_sdk/models/shared/entity_type.rb'
    autoload :Tier, 'open_api_sdk/models/shared/tier.rb'
    autoload :CompanyStatus, 'open_api_sdk/models/shared/company_status.rb'
    autoload :PayScheduleType, 'open_api_sdk/models/shared/pay_schedule_type.rb'
    autoload :FundingType, 'open_api_sdk/models/shared/funding_type.rb'
    autoload :Hourly, 'open_api_sdk/models/shared/hourly.rb'
    autoload :Fixed, 'open_api_sdk/models/shared/fixed.rb'
    autoload :CompanyPaidTimeOff, 'open_api_sdk/models/shared/company_paid_time_off.rb'
    autoload :Compensations, 'open_api_sdk/models/shared/compensations.rb'
    autoload :CompanyHomeAddress, 'open_api_sdk/models/shared/company_home_address.rb'
    autoload :PrimarySignatory, 'open_api_sdk/models/shared/primary_signatory.rb'
    autoload :PrimaryPayrollAdmin, 'open_api_sdk/models/shared/primary_payroll_admin.rb'
    autoload :Company, 'open_api_sdk/models/shared/company.rb'
    autoload :CompanyAddress, 'open_api_sdk/models/shared/company_address.rb'
    autoload :Admin, 'open_api_sdk/models/shared/admin.rb'
    autoload :Id, 'open_api_sdk/models/shared/id.rb'
    autoload :Requirements, 'open_api_sdk/models/shared/requirements.rb'
    autoload :OnboardingStep, 'open_api_sdk/models/shared/onboarding_step.rb'
    autoload :CompanyOnboardingStatus, 'open_api_sdk/models/shared/company_onboarding_status.rb'
    autoload :CompanyCustomFieldList, 'open_api_sdk/models/shared/company_custom_field_list.rb'
    autoload :CompanyCustomField, 'open_api_sdk/models/shared/company_custom_field.rb'
    autoload :CustomFieldType, 'open_api_sdk/models/shared/custom_field_type.rb'
    autoload :ActiveCompanies, 'open_api_sdk/models/shared/active_companies.rb'
    autoload :InvoiceData, 'open_api_sdk/models/shared/invoice_data.rb'
    autoload :Category, 'open_api_sdk/models/shared/category.rb'
    autoload :CompanyAttachment, 'open_api_sdk/models/shared/company_attachment.rb'
    autoload :FederalTaxDetails, 'open_api_sdk/models/shared/federal_tax_details.rb'
    autoload :Industry, 'open_api_sdk/models/shared/industry.rb'
    autoload :IdentityVerificationStatus, 'open_api_sdk/models/shared/identity_verification_status.rb'
    autoload :HomeAddress, 'open_api_sdk/models/shared/home_address.rb'
    autoload :Signatory, 'open_api_sdk/models/shared/signatory.rb'
    autoload :Flow, 'open_api_sdk/models/shared/flow.rb'
    autoload :Location, 'open_api_sdk/models/shared/location.rb'
    autoload :MinimumWage, 'open_api_sdk/models/shared/minimum_wage.rb'
    autoload :AccountType, 'open_api_sdk/models/shared/account_type.rb'
    autoload :VerificationStatus, 'open_api_sdk/models/shared/verification_status.rb'
    autoload :VerificationType, 'open_api_sdk/models/shared/verification_type.rb'
    autoload :PlaidStatus, 'open_api_sdk/models/shared/plaid_status.rb'
    autoload :CompanyBankAccount, 'open_api_sdk/models/shared/company_bank_account.rb'
    autoload :Status, 'open_api_sdk/models/shared/status.rb'
    autoload :Earnings, 'open_api_sdk/models/shared/earnings.rb'
    autoload :ExternalPayrollBenefits, 'open_api_sdk/models/shared/external_payroll_benefits.rb'
    autoload :ExternalPayrollTaxes, 'open_api_sdk/models/shared/external_payroll_taxes.rb'
    autoload :ExternalPayrollItems, 'open_api_sdk/models/shared/external_payroll_items.rb'
    autoload :ApplicableEarnings, 'open_api_sdk/models/shared/applicable_earnings.rb'
    autoload :ApplicableBenefits, 'open_api_sdk/models/shared/applicable_benefits.rb'
    autoload :ApplicableTaxes, 'open_api_sdk/models/shared/applicable_taxes.rb'
    autoload :ExternalPayrollMetadata, 'open_api_sdk/models/shared/external_payroll_metadata.rb'
    autoload :ExternalPayroll, 'open_api_sdk/models/shared/external_payroll.rb'
    autoload :ExternalPayrollBasicStatus, 'open_api_sdk/models/shared/external_payroll_basic_status.rb'
    autoload :ExternalPayrollBasic, 'open_api_sdk/models/shared/external_payroll_basic.rb'
    autoload :TaxSuggestions, 'open_api_sdk/models/shared/tax_suggestions.rb'
    autoload :ExternalPayrollTaxSuggestions, 'open_api_sdk/models/shared/external_payroll_tax_suggestions.rb'
    autoload :PossibleLiabilities, 'open_api_sdk/models/shared/possible_liabilities.rb'
    autoload :TaxLiabilitiesSelections, 'open_api_sdk/models/shared/tax_liabilities_selections.rb'
    autoload :PaymentConfigs, 'open_api_sdk/models/shared/payment_configs.rb'
    autoload :PayScheduleCreateUpdate, 'open_api_sdk/models/shared/pay_schedule_create_update.rb'
    autoload :PayScheduleFrequencyCreateUpdate, 'open_api_sdk/models/shared/pay_schedule_frequency_create_update.rb'
    autoload :PaySchedule, 'open_api_sdk/models/shared/pay_schedule.rb'
    autoload :PayScheduleFrequency, 'open_api_sdk/models/shared/pay_schedule_frequency.rb'
    autoload :PayrollType, 'open_api_sdk/models/shared/payroll_type.rb'
    autoload :PayPeriodPayroll, 'open_api_sdk/models/shared/pay_period_payroll.rb'
    autoload :PayPeriod, 'open_api_sdk/models/shared/pay_period.rb'
    autoload :UnprocessedTerminationPayPeriod, 'open_api_sdk/models/shared/unprocessed_termination_pay_period.rb'
    autoload :Type, 'open_api_sdk/models/shared/type.rb'
    autoload :PayScheduleAssignment, 'open_api_sdk/models/shared/pay_schedule_assignment.rb'
    autoload :PayScheduleAssignmentDepartment, 'open_api_sdk/models/shared/pay_schedule_assignment_department.rb'
    autoload :PayScheduleAssignmentEmployee, 'open_api_sdk/models/shared/pay_schedule_assignment_employee.rb'
    autoload :PayScheduleAssignmentPreviewType, 'open_api_sdk/models/shared/pay_schedule_assignment_preview_type.rb'
    autoload :PayScheduleAssignmentPreview, 'open_api_sdk/models/shared/pay_schedule_assignment_preview.rb'
    autoload :PayScheduleAssignmentEmployeeChange, 'open_api_sdk/models/shared/pay_schedule_assignment_employee_change.rb'
    autoload :PayScheduleAssignmentTransitionPayPeriod, 'open_api_sdk/models/shared/pay_schedule_assignment_transition_pay_period.rb'
    autoload :PayScheduleAssignmentPayPeriod, 'open_api_sdk/models/shared/pay_schedule_assignment_pay_period.rb'
    autoload :PayScheduleAssignmentBodyType, 'open_api_sdk/models/shared/pay_schedule_assignment_body_type.rb'
    autoload :Employees, 'open_api_sdk/models/shared/employees.rb'
    autoload :Departments, 'open_api_sdk/models/shared/departments.rb'
    autoload :PayScheduleAssignmentBody, 'open_api_sdk/models/shared/pay_schedule_assignment_body.rb'
    autoload :OnboardingStatus, 'open_api_sdk/models/shared/onboarding_status.rb'
    autoload :PaymentMethod, 'open_api_sdk/models/shared/payment_method.rb'
    autoload :CurrentEmploymentStatus, 'open_api_sdk/models/shared/current_employment_status.rb'
    autoload :Employee, 'open_api_sdk/models/shared/employee.rb'
    autoload :EmployeeCustomField, 'open_api_sdk/models/shared/employee_custom_field.rb'
    autoload :GarnishmentType, 'open_api_sdk/models/shared/garnishment_type.rb'
    autoload :Garnishment, 'open_api_sdk/models/shared/garnishment.rb'
    autoload :PaymentPeriod, 'open_api_sdk/models/shared/payment_period.rb'
    autoload :GarnishmentChildSupport, 'open_api_sdk/models/shared/garnishment_child_support.rb'
    autoload :GarnishmentChildSupportInput, 'open_api_sdk/models/shared/garnishment_child_support_input.rb'
    autoload :Termination, 'open_api_sdk/models/shared/termination.rb'
    autoload :Name, 'open_api_sdk/models/shared/name.rb'
    autoload :PaidTimeOff, 'open_api_sdk/models/shared/paid_time_off.rb'
    autoload :Job, 'open_api_sdk/models/shared/job.rb'
    autoload :PaymentUnit, 'open_api_sdk/models/shared/payment_unit.rb'
    autoload :MinimumWages, 'open_api_sdk/models/shared/minimum_wages.rb'
    autoload :Compensation, 'open_api_sdk/models/shared/compensation.rb'
    autoload :FlsaStatusType, 'open_api_sdk/models/shared/flsa_status_type.rb'
    autoload :WorkAddress, 'open_api_sdk/models/shared/work_address.rb'
    autoload :HistoricalEmployeeBodyHomeAddress, 'open_api_sdk/models/shared/historical_employee_body_home_address.rb'
    autoload :HistoricalEmployeeBodyTermination, 'open_api_sdk/models/shared/historical_employee_body_termination.rb'
    autoload :HistoricalEmployeeBodyJob, 'open_api_sdk/models/shared/historical_employee_body_job.rb'
    autoload :EmployeeStateTaxes, 'open_api_sdk/models/shared/employee_state_taxes.rb'
    autoload :HistoricalEmployeeBody, 'open_api_sdk/models/shared/historical_employee_body.rb'
    autoload :EmployeeOnboardingStatusOnboardingStep, 'open_api_sdk/models/shared/employee_onboarding_status_onboarding_step.rb'
    autoload :EmployeeOnboardingStatus, 'open_api_sdk/models/shared/employee_onboarding_status.rb'
    autoload :TimeOffType, 'open_api_sdk/models/shared/time_off_type.rb'
    autoload :TimeOffActivity, 'open_api_sdk/models/shared/time_off_activity.rb'
    autoload :DepartmentEmployees, 'open_api_sdk/models/shared/department_employees.rb'
    autoload :Contractors, 'open_api_sdk/models/shared/contractors.rb'
    autoload :Department, 'open_api_sdk/models/shared/department.rb'
    autoload :RehireEmploymentStatus, 'open_api_sdk/models/shared/rehire_employment_status.rb'
    autoload :Rehire, 'open_api_sdk/models/shared/rehire.rb'
    autoload :EmploymentStatus, 'open_api_sdk/models/shared/employment_status.rb'
    autoload :RehireBody, 'open_api_sdk/models/shared/rehire_body.rb'
    autoload :EmploymentHistoryListEmploymentStatus, 'open_api_sdk/models/shared/employment_history_list_employment_status.rb'
    autoload :EmploymentHistoryList, 'open_api_sdk/models/shared/employment_history_list.rb'
    autoload :EmployeeAddress, 'open_api_sdk/models/shared/employee_address.rb'
    autoload :EmployeeWorkAddress, 'open_api_sdk/models/shared/employee_work_address.rb'
    autoload :W4DataType, 'open_api_sdk/models/shared/w4_data_type.rb'
    autoload :EmployeeFederalTax, 'open_api_sdk/models/shared/employee_federal_tax.rb'
    autoload :EmployeeStateTax, 'open_api_sdk/models/shared/employee_state_tax.rb'
    autoload :EmployeeStateTaxQuestion, 'open_api_sdk/models/shared/employee_state_tax_question.rb'
    autoload :EmployeeStateTaxAnswer, 'open_api_sdk/models/shared/employee_state_tax_answer.rb'
    autoload :Options, 'open_api_sdk/models/shared/options.rb'
    autoload :EmployeeStateTaxInputQuestionFormat, 'open_api_sdk/models/shared/employee_state_tax_input_question_format.rb'
    autoload :EmployeeBankAccountAccountType, 'open_api_sdk/models/shared/employee_bank_account_account_type.rb'
    autoload :EmployeeBankAccount, 'open_api_sdk/models/shared/employee_bank_account.rb'
    autoload :EmployeePaymentMethodType, 'open_api_sdk/models/shared/employee_payment_method_type.rb'
    autoload :SplitBy, 'open_api_sdk/models/shared/split_by.rb'
    autoload :EmployeePaymentMethod, 'open_api_sdk/models/shared/employee_payment_method.rb'
    autoload :PaymentMethodBankAccount, 'open_api_sdk/models/shared/payment_method_bank_account.rb'
    autoload :EarningType, 'open_api_sdk/models/shared/earning_type.rb'
    autoload :EarningTypeList, 'open_api_sdk/models/shared/earning_type_list.rb'
    autoload :WageType, 'open_api_sdk/models/shared/wage_type.rb'
    autoload :ContractorType, 'open_api_sdk/models/shared/contractor_type.rb'
    autoload :Address, 'open_api_sdk/models/shared/address.rb'
    autoload :ContractorOnboardingStatus1, 'open_api_sdk/models/shared/contractor_onboarding_status1.rb'
    autoload :ContractorPaymentMethod1, 'open_api_sdk/models/shared/contractor_payment_method1.rb'
    autoload :Contractor, 'open_api_sdk/models/shared/contractor.rb'
    autoload :ContractorOnboardingStatusOnboardingStatus, 'open_api_sdk/models/shared/contractor_onboarding_status_onboarding_status.rb'
    autoload :ContractorOnboardingStatusOnboardingStep, 'open_api_sdk/models/shared/contractor_onboarding_status_onboarding_step.rb'
    autoload :ContractorOnboardingStatus, 'open_api_sdk/models/shared/contractor_onboarding_status.rb'
    autoload :ContractorAddress, 'open_api_sdk/models/shared/contractor_address.rb'
    autoload :ContractorBankAccountAccountType, 'open_api_sdk/models/shared/contractor_bank_account_account_type.rb'
    autoload :ContractorBankAccount, 'open_api_sdk/models/shared/contractor_bank_account.rb'
    autoload :ContractorPaymentMethodType, 'open_api_sdk/models/shared/contractor_payment_method_type.rb'
    autoload :ContractorPaymentMethodSplitBy, 'open_api_sdk/models/shared/contractor_payment_method_split_by.rb'
    autoload :ContractorPaymentMethod, 'open_api_sdk/models/shared/contractor_payment_method.rb'
    autoload :WebhookSubscriptionStatus, 'open_api_sdk/models/shared/webhook_subscription_status.rb'
    autoload :SubscriptionTypes, 'open_api_sdk/models/shared/subscription_types.rb'
    autoload :WebhookSubscription, 'open_api_sdk/models/shared/webhook_subscription.rb'
    autoload :Form1099, 'open_api_sdk/models/shared/form_1099.rb'
    autoload :FormPdf, 'open_api_sdk/models/shared/form_pdf.rb'
    autoload :RecipientType, 'open_api_sdk/models/shared/recipient_type.rb'
    autoload :Pages, 'open_api_sdk/models/shared/pages.rb'
    autoload :Fields, 'open_api_sdk/models/shared/fields_.rb'
    autoload :Document, 'open_api_sdk/models/shared/document.rb'
    autoload :DocumentPdf, 'open_api_sdk/models/shared/document_pdf.rb'
    autoload :DocumentSignedRecipientType, 'open_api_sdk/models/shared/document_signed_recipient_type.rb'
    autoload :DocumentSigned, 'open_api_sdk/models/shared/document_signed.rb'
    autoload :Form, 'open_api_sdk/models/shared/form.rb'
    autoload :PayrollPrepared, 'open_api_sdk/models/shared/payroll_prepared.rb'
    autoload :PayrollProcessingRequestStatus, 'open_api_sdk/models/shared/payroll_processing_request_status.rb'
    autoload :PayrollProcessingRequest, 'open_api_sdk/models/shared/payroll_processing_request.rb'
    autoload :PayrollFixedCompensationTypesType, 'open_api_sdk/models/shared/payroll_fixed_compensation_types_type.rb'
    autoload :PayrollPaymentSpeedChangedType, 'open_api_sdk/models/shared/payroll_payment_speed_changed_type.rb'
    autoload :PayrollEmployeeCompensationsTypePaymentMethod, 'open_api_sdk/models/shared/payroll_employee_compensations_type_payment_method.rb'
    autoload :FixedCompensations, 'open_api_sdk/models/shared/fixed_compensations.rb'
    autoload :HourlyCompensations, 'open_api_sdk/models/shared/hourly_compensations.rb'
    autoload :PayrollEmployeeCompensationsTypePaidTimeOff, 'open_api_sdk/models/shared/payroll_employee_compensations_type_paid_time_off.rb'
    autoload :Benefits, 'open_api_sdk/models/shared/benefits.rb'
    autoload :Deductions, 'open_api_sdk/models/shared/deductions.rb'
    autoload :Taxes, 'open_api_sdk/models/shared/taxes.rb'
    autoload :PayrollEmployeeCompensationsType, 'open_api_sdk/models/shared/payroll_employee_compensations_type.rb'
    autoload :PayrollPayrollStatusMetaType, 'open_api_sdk/models/shared/payroll_payroll_status_meta_type.rb'
    autoload :PayrollPayPeriodType, 'open_api_sdk/models/shared/payroll_pay_period_type.rb'
    autoload :PayrollWithholdingPayPeriodType, 'open_api_sdk/models/shared/payroll_withholding_pay_period_type.rb'
    autoload :OffCycleReasonType, 'open_api_sdk/models/shared/off_cycle_reason_type.rb'
    autoload :PayrollMinimal, 'open_api_sdk/models/shared/payroll_minimal.rb'
    autoload :PayrollCreditBlockersTypeMetadata, 'open_api_sdk/models/shared/payroll_credit_blockers_type_metadata.rb'
    autoload :PayrollCreditBlockersTypeUnblockOptions, 'open_api_sdk/models/shared/payroll_credit_blockers_type_unblock_options.rb'
    autoload :PayrollCreditBlockersTypeStatus, 'open_api_sdk/models/shared/payroll_credit_blockers_type_status.rb'
    autoload :PayrollCreditBlockersType, 'open_api_sdk/models/shared/payroll_credit_blockers_type.rb'
    autoload :PayrollSubmissionBlockersTypeMetadata, 'open_api_sdk/models/shared/payroll_submission_blockers_type_metadata.rb'
    autoload :UnblockOptions, 'open_api_sdk/models/shared/unblock_options.rb'
    autoload :PayrollSubmissionBlockersTypeStatus, 'open_api_sdk/models/shared/payroll_submission_blockers_type_status.rb'
    autoload :PayrollSubmissionBlockersType, 'open_api_sdk/models/shared/payroll_submission_blockers_type.rb'
    autoload :PayrollTotalsType, 'open_api_sdk/models/shared/payroll_totals_type.rb'
    autoload :SortOrder, 'open_api_sdk/models/shared/sort_order.rb'
    autoload :PayrollReversal, 'open_api_sdk/models/shared/payroll_reversal.rb'
    autoload :Payroll, 'open_api_sdk/models/shared/payroll.rb'
    autoload :PayrollCompanyTaxesType, 'open_api_sdk/models/shared/payroll_company_taxes_type.rb'
    autoload :Totals, 'open_api_sdk/models/shared/totals.rb'
    autoload :PayrollReceiptTaxes, 'open_api_sdk/models/shared/payroll_receipt_taxes.rb'
    autoload :EmployeeCompensations, 'open_api_sdk/models/shared/employee_compensations.rb'
    autoload :Licensee, 'open_api_sdk/models/shared/licensee.rb'
    autoload :PayrollReceipt, 'open_api_sdk/models/shared/payroll_receipt.rb'
    autoload :PayrollBlocker, 'open_api_sdk/models/shared/payroll_blocker.rb'
    autoload :GrossUpPay, 'open_api_sdk/models/shared/gross_up_pay.rb'
    autoload :EmployeePayStub, 'open_api_sdk/models/shared/employee_pay_stub.rb'
    autoload :EmployeeCheckNumberMapping, 'open_api_sdk/models/shared/employee_check_number_mapping.rb'
    autoload :PayrollCheck, 'open_api_sdk/models/shared/payroll_check.rb'
    autoload :AccruingTimeOffHour, 'open_api_sdk/models/shared/accruing_time_off_hour.rb'
    autoload :PolicyType, 'open_api_sdk/models/shared/policy_type.rb'
    autoload :TimeOffPolicyEmployees, 'open_api_sdk/models/shared/time_off_policy_employees.rb'
    autoload :TimeOffPolicy, 'open_api_sdk/models/shared/time_off_policy.rb'
    autoload :ContractorPaymentReceiptTotals, 'open_api_sdk/models/shared/contractor_payment_receipt_totals.rb'
    autoload :ContractorPayments, 'open_api_sdk/models/shared/contractor_payments.rb'
    autoload :ContractorPaymentReceiptLicensee, 'open_api_sdk/models/shared/contractor_payment_receipt_licensee.rb'
    autoload :ContractorPaymentReceipt, 'open_api_sdk/models/shared/contractor_payment_receipt.rb'
    autoload :ContractorPaymentPaymentMethod, 'open_api_sdk/models/shared/contractor_payment_payment_method.rb'
    autoload :ContractorPaymentStatus, 'open_api_sdk/models/shared/contractor_payment_status.rb'
    autoload :ContractorPaymentWageType, 'open_api_sdk/models/shared/contractor_payment_wage_type.rb'
    autoload :ContractorPayment, 'open_api_sdk/models/shared/contractor_payment.rb'
    autoload :ContractorPaymentGroupStatus, 'open_api_sdk/models/shared/contractor_payment_group_status.rb'
    autoload :ContractorPaymentGroupTotals, 'open_api_sdk/models/shared/contractor_payment_group_totals.rb'
    autoload :ContractorPaymentGroup, 'open_api_sdk/models/shared/contractor_payment_group.rb'
    autoload :ContractorPaymentForGroupPaymentMethod, 'open_api_sdk/models/shared/contractor_payment_for_group_payment_method.rb'
    autoload :ContractorPaymentForGroupStatus, 'open_api_sdk/models/shared/contractor_payment_for_group_status.rb'
    autoload :ContractorPaymentForGroupWageType, 'open_api_sdk/models/shared/contractor_payment_for_group_wage_type.rb'
    autoload :ContractorPaymentForGroup, 'open_api_sdk/models/shared/contractor_payment_for_group.rb'
    autoload :ContractorPaymentGroupMinimalStatus, 'open_api_sdk/models/shared/contractor_payment_group_minimal_status.rb'
    autoload :ContractorPaymentGroupMinimalTotals, 'open_api_sdk/models/shared/contractor_payment_group_minimal_totals.rb'
    autoload :ContractorPaymentGroupMinimal, 'open_api_sdk/models/shared/contractor_payment_group_minimal.rb'
    autoload :GeneratedDocumentStatus, 'open_api_sdk/models/shared/generated_document_status.rb'
    autoload :GeneratedDocument, 'open_api_sdk/models/shared/generated_document.rb'
    autoload :DocumentType, 'open_api_sdk/models/shared/document_type.rb'
    autoload :CreateReport, 'open_api_sdk/models/shared/create_report.rb'
    autoload :Report, 'open_api_sdk/models/shared/report.rb'
    autoload :ReportTemplate, 'open_api_sdk/models/shared/report_template.rb'
    autoload :CompanyBenefit, 'open_api_sdk/models/shared/company_benefit.rb'
    autoload :CompanyBenefitWithEmployeeBenefitsContribution, 'open_api_sdk/models/shared/company_benefit_with_employee_benefits_contribution.rb'
    autoload :EmployeeBenefits, 'open_api_sdk/models/shared/employee_benefits.rb'
    autoload :CompanyBenefitWithEmployeeBenefits, 'open_api_sdk/models/shared/company_benefit_with_employee_benefits.rb'
    autoload :SupportedBenefit, 'open_api_sdk/models/shared/supported_benefit.rb'
    autoload :BenefitSummaryPayPeriod, 'open_api_sdk/models/shared/benefit_summary_pay_period.rb'
    autoload :PayrollBenefits, 'open_api_sdk/models/shared/payroll_benefits.rb'
    autoload :BenefitSummaryEmployees, 'open_api_sdk/models/shared/benefit_summary_employees.rb'
    autoload :BenefitSummary, 'open_api_sdk/models/shared/benefit_summary.rb'
    autoload :Contribution, 'open_api_sdk/models/shared/contribution.rb'
    autoload :DeductionReducesTaxableIncome, 'open_api_sdk/models/shared/deduction_reduces_taxable_income.rb'
    autoload :EmployeeBenefit, 'open_api_sdk/models/shared/employee_benefit.rb'
    autoload :EmployeeBenefitForCompanyBenefitContribution, 'open_api_sdk/models/shared/employee_benefit_for_company_benefit_contribution.rb'
    autoload :EmployeeBenefitForCompanyBenefitDeductionReducesTaxableIncome, 'open_api_sdk/models/shared/employee_benefit_for_company_benefit_deduction_reduces_taxable_income.rb'
    autoload :EmployeeBenefitForCompanyBenefit, 'open_api_sdk/models/shared/employee_benefit_for_company_benefit.rb'
    autoload :DefaultValue, 'open_api_sdk/models/shared/default_value.rb'
    autoload :EmployeeDeduction, 'open_api_sdk/models/shared/employee_deduction.rb'
    autoload :BenefitTypeRequirementsDefaultValue, 'open_api_sdk/models/shared/benefit_type_requirements_default_value.rb'
    autoload :BenefitTypeRequirementsContribution, 'open_api_sdk/models/shared/benefit_type_requirements_contribution.rb'
    autoload :BenefitTypeRequirementsDeductAsPercentageDefaultValue, 'open_api_sdk/models/shared/benefit_type_requirements_deduct_as_percentage_default_value.rb'
    autoload :DeductAsPercentage, 'open_api_sdk/models/shared/deduct_as_percentage.rb'
    autoload :BenefitTypeRequirementsCatchUpDefaultValue, 'open_api_sdk/models/shared/benefit_type_requirements_catch_up_default_value.rb'
    autoload :CatchUp, 'open_api_sdk/models/shared/catch_up.rb'
    autoload :BenefitTypeRequirementsLimitOptionDefaultValue, 'open_api_sdk/models/shared/benefit_type_requirements_limit_option_default_value.rb'
    autoload :LimitOption, 'open_api_sdk/models/shared/limit_option.rb'
    autoload :BenefitTypeRequirementsCompanyContributionAnnualMaximumDefaultValue, 'open_api_sdk/models/shared/benefit_type_requirements_company_contribution_annual_maximum_default_value.rb'
    autoload :CompanyContributionAnnualMaximum, 'open_api_sdk/models/shared/company_contribution_annual_maximum.rb'
    autoload :BenefitTypeRequirementsCoverageSalaryMultiplierDefaultValue, 'open_api_sdk/models/shared/benefit_type_requirements_coverage_salary_multiplier_default_value.rb'
    autoload :CoverageSalaryMultiplier, 'open_api_sdk/models/shared/coverage_salary_multiplier.rb'
    autoload :BenefitTypeRequirementsCoverageAmountDefaultValue, 'open_api_sdk/models/shared/benefit_type_requirements_coverage_amount_default_value.rb'
    autoload :CoverageAmount, 'open_api_sdk/models/shared/coverage_amount.rb'
    autoload :BenefitTypeRequirements, 'open_api_sdk/models/shared/benefit_type_requirements.rb'
    autoload :PostEmployeeYtdBenefitAmountsFromDifferentCompany, 'open_api_sdk/models/shared/post_employee_ytd_benefit_amounts_from_different_company.rb'
    autoload :FipsCodes, 'open_api_sdk/models/shared/fips_codes.rb'
    autoload :Key, 'open_api_sdk/models/shared/key.rb'
    autoload :RequiredAttributes, 'open_api_sdk/models/shared/required_attributes.rb'
    autoload :Agencies, 'open_api_sdk/models/shared/agencies.rb'
    autoload :ChildSupportData, 'open_api_sdk/models/shared/child_support_data.rb'
    autoload :TaxRequirementsState, 'open_api_sdk/models/shared/tax_requirements_state.rb'
    autoload :TaxRequirementSet, 'open_api_sdk/models/shared/tax_requirement_set.rb'
    autoload :ApplicableIf, 'open_api_sdk/models/shared/applicable_if.rb'
    autoload :TaxRequirement, 'open_api_sdk/models/shared/tax_requirement.rb'
    autoload :TaxRequirementMetadataType, 'open_api_sdk/models/shared/tax_requirement_metadata_type.rb'
    autoload :TaxRequirementMetadataOptions, 'open_api_sdk/models/shared/tax_requirement_metadata_options.rb'
    autoload :RateType, 'open_api_sdk/models/shared/rate_type.rb'
    autoload :TaxRequirementMetadataValidationType, 'open_api_sdk/models/shared/tax_requirement_metadata_validation_type.rb'
    autoload :Validation, 'open_api_sdk/models/shared/validation.rb'
    autoload :TaxRequirementMetadata, 'open_api_sdk/models/shared/tax_requirement_metadata.rb'
    autoload :NewYearsDay, 'open_api_sdk/models/shared/new_years_day.rb'
    autoload :MlkDay, 'open_api_sdk/models/shared/mlk_day.rb'
    autoload :PresidentsDay, 'open_api_sdk/models/shared/presidents_day.rb'
    autoload :MemorialDay, 'open_api_sdk/models/shared/memorial_day.rb'
    autoload :Juneteenth, 'open_api_sdk/models/shared/juneteenth.rb'
    autoload :IndependenceDay, 'open_api_sdk/models/shared/independence_day.rb'
    autoload :LaborDay, 'open_api_sdk/models/shared/labor_day.rb'
    autoload :ColumbusDay, 'open_api_sdk/models/shared/columbus_day.rb'
    autoload :VeteransDay, 'open_api_sdk/models/shared/veterans_day.rb'
    autoload :Thanksgiving, 'open_api_sdk/models/shared/thanksgiving.rb'
    autoload :FederalHolidays, 'open_api_sdk/models/shared/federal_holidays.rb'
    autoload :HolidayPayPolicyEmployees, 'open_api_sdk/models/shared/holiday_pay_policy_employees.rb'
    autoload :HolidayPayPolicy, 'open_api_sdk/models/shared/holiday_pay_policy.rb'
    autoload :Schema, 'open_api_sdk/models/shared/schema.rb'
    autoload :PaidHolidays, 'open_api_sdk/models/shared/paid_holidays.rb'
    autoload :Resources, 'open_api_sdk/models/shared/resources.rb'
    autoload :Notification, 'open_api_sdk/models/shared/notification.rb'
    autoload :ResourceType, 'open_api_sdk/models/shared/resource_type.rb'
    autoload :Event, 'open_api_sdk/models/shared/event.rb'
    autoload :RecoveryCaseStatus, 'open_api_sdk/models/shared/recovery_case_status.rb'
    autoload :RecoveryCase, 'open_api_sdk/models/shared/recovery_case.rb'
    autoload :PaymentEventType, 'open_api_sdk/models/shared/payment_event_type.rb'
    autoload :AchTransactionRecipientType, 'open_api_sdk/models/shared/ach_transaction_recipient_type.rb'
    autoload :PaymentStatus, 'open_api_sdk/models/shared/payment_status.rb'
    autoload :PaymentDirection, 'open_api_sdk/models/shared/payment_direction.rb'
    autoload :AchTransaction, 'open_api_sdk/models/shared/ach_transaction.rb'
    autoload :WireInRequestStatus, 'open_api_sdk/models/shared/wire_in_request_status.rb'
    autoload :PaymentUuid, 'open_api_sdk/models/shared/payment_uuid.rb'
    autoload :WireInRequest, 'open_api_sdk/models/shared/wire_in_request.rb'
    autoload :Security, 'open_api_sdk/models/shared/security.rb'
  end
end
