# Dataset Overview

Source: PennDOT crash data (Centre County, 2024)

https://experience.arcgis.com/experience/51809b06e7b140208a4ed6fbad964990/page/County#data_s=id%3AdataSource_4-19643bea6c4-layer-1%3A2105

Unit of analysis: crash level (each row = one crash, id = CRN)



## Variables Used in Analysis

### MAX_SEVERITY_LEVEL

Description: highest injury severity level in the crash

Type: categorical

Values:
  
  0 = Property damage only
  
  1 = Minor injury
  
  2 = Serious injury
  
  3 = Fatal


### COLLISION_TYPE

Description: type of collision between vehicles or objects

Type: categorical

Values:
  1 = Rear-end

  2 = Head-on

  3 = Angle


### WEATHER1

Description: primary weather condition at time of crash

Type: categorical

Example values:

  3 = Clear

  7 = Rain

  10 = Snow


### ROAD_CONDITION

Description: roadway surface condition

Type: categorical
 

### HOUR_OF_DAY

Description: hour of crash (0–23)

Type: numeric

 
### INJURY_COUNT

Description: total number of injuries

Type: numeric
