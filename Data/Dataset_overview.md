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

### MAX_SEVERITY_LEVEL

Description: Highest injury severity level in the crash

Type: categorical

Values:
  - 0: Property Damage Only
  - 1: Fatal 2 | Suspected Serious Injury
  - 3: Suspected Minor Injury
  - 4: Possible Injury
  - 8: Injury | Unknown Severity
  - 9: Unknown if Injured 


### COLLISION_TYPE

Description: Type of collision between vehicles or objects

Type: categorical

Values:
  - 0: Non-collision
  - 1: Rear-end
  - 2: Head-on
  - 3: Backing
  - 4: Angle
  - 5: Sideswipe | same direction
  - 6: Sideswipe | opposite direction
  - 7: Hit Fixed Object
  - 8: Hit Non-Motorist
  - 9: Other/Unknown (Expired)
  - 98: Other

### WEATHER1

Description: Primary weather condition at time of crash

Type: categorical

 Values:
  - 01: Blowing Sand, Soil, Dirt
  - 02: Blowing Snow
  - 03: Clear
  - 04: Cloudy
  - 05: Fog, Smog, Smoke
  - 06: Freezing Rain or Freezing Drizzle

### WEATHER2

Description: Secondary weather condition at time of crash (modifier to WEATHER1)

Type: categorical

Values: Same as Weather1



### ROAD_CONDITION

Description: Roadway surface condition

Type: categorical

Values:
  - 01: Dry
  - 02: Ice/Frost
  - 03: Mud, Dirt, Gravel
  - 04: Oil
  - 05: Sand
  - 06: Slush
  - 07: Snow
  - 08: Water (Standing or Moving)
  - 09: Wet
  - 98: Other


### HOUR_OF_DAY

Description: Hour of crash (0–23)

Type: numeric

 
### DAY_OF_WEEK

Description: Day of the week the crash occurred
Type: Categorical
Values: Monday to Sunday (1 to 7)


### CRASH_MONTH
Description: Month in which the crash occurred
Type: Categorical (1 = January through 12 = December)

### CRASH_YEAR
Description: Year in which the crash occurred
Type: Numeric
Values in dataset: 2023, 2024

### FATAL_COUNT
Description: Number of persons killed as a result of the crash
Type: Numeric (integer, 0 or more)

### INJURY_COUNT
Description: Total number of persons injured in the crash
Type: Numeric (integer, 0 or more)

### TOT_INJ_COUNT
Description: Total injury count including all severity levels
Type: Numeric

### URBAN_RURAL
Description: Urbanization classification of crash location
Type: Categorical
Values:
  - 1: Rural
  - 2: Urbanized
  - 3: Urban

### ILLUMINATION
Description: Light condition at time of crash
Type: Categorical
Values:
  - 1: Daylight
  - 2: Dark | no street lights
  - 3: Dark | street lights on
  - 4: Dusk
  - 5: Dawn
    
### INTERSECTION_RELATED
Description: Indicates whether the crash occurred at or related to an intersection
Type: Categorical (Y / N)
