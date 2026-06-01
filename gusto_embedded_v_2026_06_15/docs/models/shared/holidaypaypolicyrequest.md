# HolidayPayPolicyRequest

Request body for creating or updating a holiday pay policy


## Fields

| Field                                                                                                                              | Type                                                                                                                               | Required                                                                                                                           | Description                                                                                                                        |
| ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| `federal_holidays`                                                                                                                 | [T.nilable(Models::Shared::HolidayPayPolicyRequestFederalHolidays)](../../models/shared/holidaypaypolicyrequestfederalholidays.md) | :heavy_minus_sign:                                                                                                                 | An object containing federal holiday objects, each containing a boolean selected property.                                         |