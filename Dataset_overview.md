# Dataset Overview

<!-- Style Guide: Google R Style Guide -->

Source: PennDOT Crash Data (Centre County, 2023–2024)

URL: https://experience.arcgis.com/experience/51809b06e7b140208a4ed6fbad964990/page/County#data_s=id%3AdataSource_4-19643bea6c4-layer-1%3A2105
Accessed: April 23, 2026

Unit of analysis: Crash level (each row = one crash, id = CRN)

Primary Key: `CRN` (Crash Record Number, unique per crash)

Files:

- `CRASH_CENTRE_2023.csv`: 1,025 crash records
- `CRASH_CENTRE_2024.csv`: 1,072 crash records
- Combined: 2,097 crash records across both years
---

## PCIP Plan

### Collision Type Frequency by Day of Week (insight-chart)
- **Plan:** Identify which collision type occurs most frequently
  across days of the week to surface behavioral patterns
- **Code:** Line chart with shape aesthetic using ggplot2;
  data combined from 2023 and 2024 CSVs
- **Improve:** Added shape aesthetic for accessibility;
  corrected collision labels; fixed chunk options
- **Plan (next):** Narrative EPT written to accompany figure

### Seasonal Crash Tables (seasonal-crash-tables)
- **Plan:** Summarize crash patterns by road condition and
  area type across four seasons to identify seasonal trends
- **Code:**
  - `case_when()` for season derivation
  - `group_by()` and `summarise()` for mode collision and severity per group
  - `kable()` loop for four tables
- **Improve:** Fixed `align` vector length; removed
  `hold_position` conflict; debugged loop variable scoping
- **Plan (next):** EPT narrative written to accompany tables

### Monthly Crash Counts (monthly-crashes)
- **Plan:** Compare monthly crash volume between 2023 and 2024
- **Code:** Summarized crash counts by `Year` and `Month`
- **Improve:** Reordered months chronologically and rotated x-axis labels

### Road Condition x Severity Heatmap (road-severity-heatmap)
- **Plan:** Visualize crash counts across road conditions
  segmented by severity group to assess road condition impact
- **Code:** `geom_tile()` with `geom_text()` labels;
  road conditions ordered by total volume descending
- **Improve:** Added axis title margins; refined color gradient;
  updated alt text to reflect key patterns
- **Plan (next):** EPT narrative written to accompany figure
---
## Variables Used in Analysis

### CRN
- Description: Unique crash record identifier
- Type: ID (categorical)
- Note: Each row represents one crash

### Year
- Description: Year when the crash occurred
- Type: numeric
- Values:
  - 2023
  - 2024

### Month
- Description: Month when the crash occurred
- Type: categorical
- Source: CRASH_MONTH
- Values:
  - 1: January
  - 2: February
  - 3: March
  - 4: April
  - 5: May
  - 6: June
  - 7: July
  - 8: August
  - 9: September
  - 10: October
  - 11: November
  - 12: December

### Day
- Description: Day of the week when the crash occurred
- Type: categorical
- Source: DAY_OF_WEEK
- Values:
  - 1: Sunday
  - 2: Monday
  - 3: Tuesday
  - 4: Wednesday
  - 5: Thursday
  - 6: Friday
  - 7: Saturday

### Collision_Type
- Description: Type of collision between vehicles or objects
- Type: categorical
- Source: COLLISION_TYPE
- Values:
  - 0: Non-collision
  - 1: Rear-end
  - 2: Head-on
  - 3: Backing
  - 4: Angle
  - 5: Sideswipe same direction
  - 6: Sideswipe opposite direction
  - 7: Hit fixed object
  - 8: Hit non-motorist
  - 98: Other

### Severity_Level
- Description: Highest injury severity level in the crash
- Type: categorical
- Source: MAX_SEVERITY_LEVEL
- Values:
  - 0: Property damage only
  - 1: Fatal
  - 2: Suspected serious injury
  - 3: Suspected minor injury
  - 4: Possible injury
  - 8: Injury unknown severity
  - 9: Unknown if injured

### Severity_Group
- Description: Simplified crash severity grouping created for analysis
- Type: categorical
- Created from: MAX_SEVERITY_LEVEL
- Values:
  - More severe: 1 (Fatal), 2 (Serious injury)
  - Less severe: 0, 3, 4
  - Unknown: 8, 9

### INJURY_COUNT
- Description: Total number of injuries in the crash
- Type: numeric

### FATAL_COUNT
- Description: Total number of fatalities in the crash
- Type: numeric

### Road_Condition
- Description: Surface condition of the roadway
- Type: categorical
- Source: ROAD_CONDITION
- Values:
  - 1: Dry
  - 2: Ice or frost
  - 3: Mud, dirt, or gravel
  - 6: Slush
  - 7: Snow
  - 8: Water
  - 9: Wet
  - 98: Other
  - 99: Unknown

### Area_Type
- Description: Urban or rural classification of crash location
- Type: categorical
- Source: URBAN_RURAL
- Values:
  - 1: Rural
  - 2: Urbanized
  - 3: Urban

### VEHICLE_COUNT
- Description: Number of vehicles involved in the crash
- Type: numeric

### TOTAL_UNITS
- Description: Total number of units involved (vehicles and pedestrians)
- Type: numeric
