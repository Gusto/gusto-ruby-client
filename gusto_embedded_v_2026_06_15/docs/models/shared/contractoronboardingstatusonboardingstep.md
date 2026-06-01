# ContractorOnboardingStatusOnboardingStep


## Fields

| Field                                                   | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `title`                                                 | *T.nilable(::String)*                                   | :heavy_minus_sign:                                      | User-friendly description of the onboarding step.       |
| `id`                                                    | *T.nilable(::String)*                                   | :heavy_minus_sign:                                      | String identifier for the onboarding step.              |
| `required`                                              | *T.nilable(T::Boolean)*                                 | :heavy_minus_sign:                                      | When true, this step is required.                       |
| `completed`                                             | *T.nilable(T::Boolean)*                                 | :heavy_minus_sign:                                      | When true, this step has been completed.                |
| `requirements`                                          | T::Array<*::String*>                                    | :heavy_minus_sign:                                      | A list of onboarding steps required to begin this step. |