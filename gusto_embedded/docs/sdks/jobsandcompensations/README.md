# JobsAndCompensations
(*jobs_and_compensations*)

## Overview

### Available Operations

* [create_job](#create_job) - Create a job
* [get_jobs](#get_jobs) - Get jobs for an employee
* [get_job](#get_job) - Get a job
* [update](#update) - Update a job
* [delete](#delete) - Delete an individual job
* [get_compensations](#get_compensations) - Get compensations for a job
* [create_compensation](#create_compensation) - Create a compensation
* [get_compensation](#get_compensation) - Get a compensation
* [update_compensation](#update_compensation) - Update a compensation
* [delete_compensation](#delete_compensation) - Delete a compensation

## create_job

Create a job.

scope: `jobs:write`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.jobs_and_compensations.create_job(employee_id="<id>", request_body=::GustoEmbedded::Operations::PostV1JobsJobIdRequestBody.new(
  title: "<value>",
  hire_date: "<value>",
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_06_15)

if ! res.job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PostV1JobsJobIdRequestBody](../../models/operations/postv1jobsjobidrequestbody.md)                                                                                                             | :heavy_check_mark:                                                                                                                                                                                                           | Create a job.                                                                                                                                                                                                                |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PostV1JobsJobIdResponse)](../../models/operations/postv1jobsjobidresponse.md)**



## get_jobs

Get all of the jobs that an employee holds.

scope: `jobs:read`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

req = ::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdJobsRequest.new(
  employee_id: "<id>",
)

res = s.jobs_and_compensations.get_jobs(req)

if ! res.job_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                          | Type                                                                                                                               | Required                                                                                                                           | Description                                                                                                                        |
| ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                          | [::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdJobsRequest](../../models/operations/getv1employeesemployeeidjobsrequest.md) | :heavy_check_mark:                                                                                                                 | The request object to use for the request.                                                                                         |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdJobsResponse)](../../models/operations/getv1employeesemployeeidjobsresponse.md)**



## get_job

Get a job.

scope: `jobs:read`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.jobs_and_compensations.get_job(job_id="<id>", include=::GustoEmbedded::Operations::GetV1JobsJobIdQueryParamInclude::ALL_COMPENSATIONS, x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_06_15)

if ! res.job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `job_id`                                                                                                                                                                                                                     | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the job                                                                                                                                                                                                          |
| `include`                                                                                                                                                                                                                    | [T.nilable(::GustoEmbedded::Operations::GetV1JobsJobIdQueryParamInclude)](../../models/operations/getv1jobsjobidqueryparaminclude.md)                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                           | Available options:<br/>- all_compensations: Include all effective dated compensations for the job instead of only the current compensation                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1JobsJobIdResponse)](../../models/operations/getv1jobsjobidresponse.md)**



## update

Update a job.

scope: `jobs:write`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.jobs_and_compensations.update(job_id="<id>", request_body=::GustoEmbedded::Operations::PutV1JobsJobIdRequestBody.new(
  version: "<value>",
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_06_15)

if ! res.job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `job_id`                                                                                                                                                                                                                     | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the job                                                                                                                                                                                                          |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PutV1JobsJobIdRequestBody](../../models/operations/putv1jobsjobidrequestbody.md)                                                                                                               | :heavy_check_mark:                                                                                                                                                                                                           | Update a job.                                                                                                                                                                                                                |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutV1JobsJobIdResponse)](../../models/operations/putv1jobsjobidresponse.md)**



## delete

Deletes a specific job that an employee holds.

scope: `jobs:write`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.jobs_and_compensations.delete(job_id="<id>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_06_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `job_id`                                                                                                                                                                                                                     | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the job                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::DeleteV1JobsJobIdResponse)](../../models/operations/deletev1jobsjobidresponse.md)**



## get_compensations

Compensations contain information on how much is paid out for a job. Jobs may have many compensations, but only one that is active. The current compensation is the one with the most recent `effective_date`. By default the API returns only the current compensation - see the `include` query parameter for retrieving all compensations.

Note: Currently the API does not support creating multiple compensations per job - creating a compensation with the same `job_uuid` as another will fail with a relevant error.

Use `flsa_status` to determine if an employee is eligible for overtime.

scope: `jobs:read`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

req = ::GustoEmbedded::Operations::GetV1JobsJobIdCompensationsRequest.new(
  job_id: "<id>",
)

res = s.jobs_and_compensations.get_compensations(req)

if ! res.compensation_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                        | Type                                                                                                                             | Required                                                                                                                         | Description                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                        | [::GustoEmbedded::Operations::GetV1JobsJobIdCompensationsRequest](../../models/operations/getv1jobsjobidcompensationsrequest.md) | :heavy_check_mark:                                                                                                               | The request object to use for the request.                                                                                       |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1JobsJobIdCompensationsResponse)](../../models/operations/getv1jobsjobidcompensationsresponse.md)**



## create_compensation

Compensations contain information on how much is paid out for a job. Jobs may have many compensations, but only one that is active. The current compensation is the one with the most recent `effective_date`.

scope: `jobs:write`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.jobs_and_compensations.create_compensation(job_id="<id>", request_body=::GustoEmbedded::Operations::PostV1CompensationsCompensationIdRequestBody.new(
  payment_unit: ::GustoEmbedded::Operations::PaymentUnit::PAYCHECK,
  flsa_status: ::GustoEmbedded::Shared::FlsaStatusType::COMMISSION_ONLY_NONEXEMPT,
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_06_15)

if ! res.compensation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `job_id`                                                                                                                                                                                                                     | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the job                                                                                                                                                                                                          |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PostV1CompensationsCompensationIdRequestBody](../../models/operations/postv1compensationscompensationidrequestbody.md)                                                                         | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PostV1CompensationsCompensationIdResponse)](../../models/operations/postv1compensationscompensationidresponse.md)**



## get_compensation

Compensations contain information on how much is paid out for a job. Jobs may have many compensations, but only one that is active. The current compensation is the one with the most recent `effective_date`.

scope: `jobs:read`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.jobs_and_compensations.get_compensation(compensation_id="<id>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_06_15)

if ! res.compensation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `compensation_id`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the compensation                                                                                                                                                                                                 |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1CompensationsCompensationIdResponse)](../../models/operations/getv1compensationscompensationidresponse.md)**



## update_compensation

Compensations contain information on how much is paid out for a job. Jobs may have many compensations, but only one that is active. The current compensation is the one with the most recent `effective_date`.

scope: `jobs:write`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.jobs_and_compensations.update_compensation(compensation_id="<id>", request_body=::GustoEmbedded::Operations::PutV1CompensationsCompensationIdRequestBody.new(
  version: "<value>",
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_06_15)

if ! res.compensation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `compensation_id`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the compensation                                                                                                                                                                                                 |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PutV1CompensationsCompensationIdRequestBody](../../models/operations/putv1compensationscompensationidrequestbody.md)                                                                           | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutV1CompensationsCompensationIdResponse)](../../models/operations/putv1compensationscompensationidresponse.md)**



## delete_compensation

Compensations contain information on how much is paid out for a job. Jobs may have many compensations, but only one that is active. The current compensation is the one with the most recent `effective_date`. This endpoint deletes a compensation for a job that hasn't been processed on payroll.

scope: `jobs:write`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.jobs_and_compensations.delete_compensation(compensation_id="<id>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_06_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `compensation_id`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the compensation                                                                                                                                                                                                 |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::DeleteV1CompensationsCompensationIdResponse)](../../models/operations/deletev1compensationscompensationidresponse.md)**

