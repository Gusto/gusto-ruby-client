# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # VerificationStatus - The verification status of the bank account.
    # 
    # 'awaiting_deposits' means the bank account is just created and money is being transferred.
    # 'ready_for_verification' means the micro-deposits are completed and the verification process can begin by using the verify endpoint.
    # 'verified' means the bank account is verified.
    class VerificationStatus < T::Enum
      enums do
        AWAITING_DEPOSITS = new('awaiting_deposits')
        READY_FOR_VERIFICATION = new('ready_for_verification')
        VERIFIED = new('verified')
      end
    end
  end
end
