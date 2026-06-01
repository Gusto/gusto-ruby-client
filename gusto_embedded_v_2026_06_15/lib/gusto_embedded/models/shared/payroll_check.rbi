# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::PayrollCheck
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::PayrollCheck
  def payroll_uuid(); end
  def payroll_uuid=(str_); end
  def printing_format(); end
  def printing_format=(str_); end
  def request_uuid(); end
  def request_uuid=(str_); end
  def status(); end
  def status=(str_); end
  def employee_check_number_mapping(); end
  def employee_check_number_mapping=(str_); end
  def starting_check_number(); end
  def starting_check_number=(str_); end
end
