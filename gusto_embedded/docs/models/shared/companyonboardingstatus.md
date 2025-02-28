# CompanyOnboardingStatus

The representation of a company's onboarding status


## Fields

| Field                                                                                      | Type                                                                                       | Required                                                                                   | Description                                                                                |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `uuid`                                                                                     | *::String*                                                                                 | :heavy_check_mark:                                                                         | the UUID of the company                                                                    |
| `onboarding_completed`                                                                     | *T.nilable(T::Boolean)*                                                                    | :heavy_minus_sign:                                                                         | a boolean flag for the company's onboarding status                                         |
| `onboarding_steps`                                                                         | T::Array<[::GustoEmbedded::Shared::OnboardingStep](../../models/shared/onboardingstep.md)> | :heavy_minus_sign:                                                                         | a list of company onboarding steps                                                         |