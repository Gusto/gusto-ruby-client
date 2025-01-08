# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PutV1WebhookSubscriptionUuidSubscriptionTypes < T::Enum
      enums do
        BANK_ACCOUNT = new('BankAccount')
        COMPANY = new('Company')
        COMPANY_BENEFIT = new('CompanyBenefit')
        CONTRACTOR = new('Contractor')
        CONTRACTOR_PAYMENT = new('ContractorPayment')
        EMPLOYEE = new('Employee')
        EMPLOYEE_BENEFIT = new('EmployeeBenefit')
        EMPLOYEE_JOB_COMPENSATION = new('EmployeeJobCompensation')
        EXTERNAL_PAYROLL = new('ExternalPayroll')
        FORM = new('Form')
        LOCATION = new('Location')
        NOTIFICATION = new('Notification')
        PAYROLL = new('Payroll')
        PAY_SCHEDULE = new('PaySchedule')
        SIGNATORY = new('Signatory')
      end
    end
  end
end
