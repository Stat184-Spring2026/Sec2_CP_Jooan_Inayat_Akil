# Dataset Overview

<!-- Style Guide: Google R Style Guide -->


Source: PennDOT crash data (Centre County, 2024)

URL: https://experience.arcgis.com/experience/51809b06e7b140208a4ed6fbad964990/page/County#data_s=id%3AdataSource_4-19643bea6c4-layer-1%3A2105

Unit of analysis: Crash level (each row = one crash, id = CRN)

Files:

CRASH_CENTRE_2023.csv — 1,025 crash records
CRASH_CENTRE_2024.csv — 1,072 crash records
Combined: 2,097 crash records across both years

## Variables Used in Analysis

### CRN
- Description: Unique crash record identifier
- Type: ID (categorical)
- Note: Each row represents one crash

---

### Year
- Description: Year when the crash occurred
- Type: numeric
- Values:
  - 2023
  - 2024

---

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

---

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

---

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

---

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

---

### Severity_Group
- Description: Simplified crash severity grouping created for analysis
- Type: categorical
- Created from: MAX_SEVERITY_LEVEL
- Values:
  - More severe: 1 (Fatal), 2 (Serious injury)
  - Less severe: 0, 3, 4
  - Unknown: 8, 9

---

### INJURY_COUNT
- Description: Total number of injuries in the crash
- Type: numeric

---

### FATAL_COUNT
- Description: Total number of fatalities in the crash
- Type: numeric

---

### Weather
- Description: Primary weather condition at the time of the crash
- Type: categorical
- Source: WEATHER1
- Values:
  - 2: Blowing snow
  - 3: Clear
  - 4: Cloudy
  - 5: Fog, smog, or smoke
  - 6: Freezing rain or sleet
  - 7: Rain
  - 8: Severe crosswinds
  - 9: Sleet or hail
  - 10: Snow
  - 98: Other
  - 99: Unknown

---

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

---

### Area_Type
- Description: Urban or rural classification of crash location
- Type: categorical
- Source: URBAN_RURAL
- Values:
  - 1: Rural
  - 2: Urbanized
  - 3: Urban

---

### VEHICLE_COUNT
- Description: Number of vehicles involved in the crash
- Type: numeric

---

### TOTAL_UNITS
- Description: Total number of units involved (vehicles and pedestrians)
- Type: numeric
