Advance Reservations and Ticketing (Category 05) Rules API is used to define advance reservations and ticketing requirements applicable to a fare. Reservation restrictions may be specified as a period of time before departure of the originating flight of the pricing unit that indicates either the latest time reservations are required or the earliest time reservations are permitted. Ticketing restrictions are specified as either a period of time before departure of the originating flight of the pricing unit and/or a period of time after reservations are confirmed that indicate the latest time ticketing is required.The API is designed by ATPCO to meet your needs for automated table creation so you can reduce manual input and get your fares to market faster.

# Request
Your request to the Advance Reservations and Ticketing (Category 05) Rules Web Service must provide a valid OAuth Access Token. For instructions on how to obtain and use an OAuth Access Token programmatically, see [Authentication](https://atpcoapis.portal.swaggerhub.com/content-management/default/authentication). You must also specify parameters in the request body.

## Request Header Parameters
See [Authentication](https://atpcoapis.portal.swaggerhub.com/content-management/default/authentication) for instructions on header parameters needed for authentication.

## Request Body
The request body should be formatted as a JSON object (examples below).

## Request Object Parameters
All data requests must be received in the JSON format specified by ATPCO, with field names and sub values found in Data Application unless otherwise specified (fields and sub values (i.e., parameters) detailed below). Field names and provided values must be enclosed in quotation marks (e.g., `"tvlDtExp"`).

* `""` or `"  "` as a field name or field value: an empty or non-empty blank string within quotation marks in the request is ignored and will not appear in the JSON response
* Invalid field names in a request are ignored
* Invalid field values in a request generate an error 

If your request contains field names that are invalid in a request yet valid in a response (e.g., `msgs` or `msg`), those fields will be eliminated during processing and overlaid when necessary in the response.

All String fields (enclosed in double quotes) will have leading and trailing spaces removed unless removing all blanks would violate a possible value for a field where blank(s) is valid on a JSON request. Some fields may have special leading/trailing blanks removal rules such as `NoteText996`, where only trailing blanks are removed to preserve any intentional text indentations.

*Examples of invalid field names and values*

| Field Name | Value | Issue | System Handling |
| ---------- | ----- | ----- | --------------- |
| `" tvlDtExp"` | &nbsp; | Extra leading space | ignored |
| `"tvlDtExp "` | &nbsp; | Extra trailing space | ignored |
| `"tvlDExp"` | &nbsp; | Field name incorrect. Missing 't' | ignored |
| &nbsp; | `" WAS"` | Extra leading space | Error invalid city format |

The request object can include any of the following parameters:

### Advance Reservations and Ticketing (Category 05) parameters
| Field Name | Description | Type | Format | Example |
| ---------- | ----------- | ---- | ------ | ------- |
| `advancedres05` | Wrapper for Category 05 domain | Collection of key-value pairs | &nbsp; | `{ }` |
| `resStartTime` | Indicates the earliest time reservations are permitted, before departure of the originating flight of the pricing unit or the flight. | String  | 24 hour clock | `"0900"` |
| `resStartDayOfWeek` | Specifies the advance reservation expressed in the day of the week. | String | `"Mon"` = Monday; `"Tue"` = Tuesday; `"Wed"` = Wednesday; `"Thu"` = Thursday; `"Fri"` = Friday; `"Sat"` = Saturday; `"Sun"`= Sunday | "`"Mon"`" |
| `resStartOccurence` | Specifies the occurrence of the day of the week | String | `"01"` = First; `"02"` = Second; `"03"` = Third; `"04"` = Fourth; `"05"` = Fifth; `"06"` = Sixth | `"03"` |
| `resStartDuration` | Specifies the  number of units in the advance reservation. | String  | ### | `"15"` |
| `resStartUnit` | Indicates the unit by which the  advance reservation is measured. | String | `"M"` = Months; `"D"` = Days; `"H"` = Hours; `"N"` = Minutes;| "`"M"`" |
| `resStopTime` | Indicates the last time reservations are permitted, before departure of the originating flight of the pricing unit or the flight. | String  | 24 hour clock | `"0900"` |
| `resStopDayOfWeek` | Specifies the advance reservation expressed in the day of the week | String | `"Mon"` = Monday; `"Tue"` = Tuesday; `"Wed"` = Wednesday; `"Thu"` = Thursday; `"Fri"` = Friday; `"Sat"` = Saturday; `"Sun"`= Sunday | "`"Mon"`" |
| `resStopOccurence` | Specifies the occurrence of the day of the week. | String | `"01"` = First; `"02"` = Second; `"03"` = Third; `"04"` = Fourth; `"05"` = Fifth; `"06"` = Sixth | `"03"` |
| `resStopDuration` | Specifies the  number of units in the advance reservation. | String  | ### | `"15"` |
| `resStopUnit` | Indicates the unit by which the  advance reservation is measured. | String | `"M"` = Months; `"D"` = Days; `"H"` = Hours; `"N"` = Minutes;| "`"M"`" |
| `resMeasuredFromTsi` | Travel Segment Indicator valid for the Record 3 provisions. | String max 2 -(character) | `"03"` = 2 digit numeric TSI as defined |
| `confirmedSector` | Indicates the sector of the itinerary that must be confirmed prior to ticketing. | String (max 1-character) | `"X"` = All; `"N"` = No Open Returns;`"E"` = Each;`"X"` = All; | `"X"` |
| `advResIndicator` | Indicates that reservations must be made and tickets issued at the same time. | String (max 1-character) | `"N"` = Not Permitted; `"Y"` = Permitted only at the time of ticketing | `"N"` |
| `standbyWaitlist` | Indicates the standby and wait listing conditions. | String (max 1-character) | `"A"` = 1 character Standby Waitlist code as defined |
| `resWaiverDate` | The last date when waiver applies to advance reservations. | String | YYYYMMDD | `"20180930"` |
| `tktIssueTime` | The time of day when ticketing is permitted or by which ticketing is required after reservations are confirmed. | String  | 24 hour clock | `"0900"` |
| `tktDayofWeek` | Specifies whether the advance reservation is expressed in the day of the week. | String | `"Mon"` = Monday; `"Tue"` = Tuesday; `"Wed"` = Wednesday; `"Thu"` = Thursday; `"Fri"` = Friday; `"Sat"` = Saturday; `"Sun"`= Sunday | "`"Mon"`" |
| `tktOccurrence` |  Specifies the occurrence of the day of the week. | String | `"01"` = First; `"02"` = Second; `"03"` = Third; `"04"` = Fourth; `"05"` = Fifth; `"06"` = Sixth | `"03"` |
| `tktDuration` | Specifies the  number of units in the advance ticketing. | String  | ### | `"15"` |
| `tktUnit` | Indicates the unit by which the  advance ticketing is measured. | String | `"M"` = Months; `"D"` = Days; `"H"` = Hours; `"N"` = Minutes;| "`"M"`" |
| `tktPermittedIndicator` | Indicates the time that follows is the earliest time the ticketing is permitted or the amount of time prior to travel that ticketing is required. | String (max 1-character) | `"R"` = Required; `"Y"` = Permitted | `"R"` |
| `depatureDuration` | Specifies the  number of units allowed before departure. | String  | ### | `"15"` |
| `depatureUnit` | Indicates the unit by which the  ticketing before departure is measured. | String | `"M"` = Months; `"D"` = Days; `"H"` = Hours; `"N"` = Minutes;| "`"M"`" |
| `tktMeasuredFromTsi` | Travel Segment Indicator valid for the Record 3 provisions. | String max 2 -(character) | `"03"` = 2 digit numeric TSI as defined |
| `applyWhichever` | Indicates the amount of time after reservations are made and prior to departure must both be taken as factors in determining the point in time at which tickets must be issued. | String (max 1-character) | `"E"` = Earlier; `"L"` = Later | `"E"` |
| `tktWaiverDuration` | The shortest amount of time in minutes prior to departure to which an exception to the advance ticketing requirements applies. | String  | ### | `"15"` |
| `tktWaiverUnit` | Indicates  the unit by which the  ticketing before departure is measured. | String | `"M"` = Months; `"D"` = Days; `"H"` = Hours; `"N"` = Minutes;| "`"M"`" |
| `tktWaiverDate` | The last date when waiver applies to advance ticketing requirement. | String | YYYYMMDD | `"20180930"` |


### 994 Override Date Fields	
| Field Name | Description | Type | Format | Example |
| ---------- | ----------- | ---- | ------ | ------- |
| `ovrrdDt994` | Wrapper for 994 Subdomain | Collection of key-value pairs | &nbsp; | `{ }` |
| `tvlEff` | The first date travel is valid for the Category Record 3 provisions | String | YYYYMMDD | `"20180930"` |
| `tvlDisc` | The last date travel is valid for the Category Record 3 provisions | String | YYYYMMDD | `"20180930"` |
| `tktEff` | The first date ticketing is valid for the Category Record 3 provisions | String | YYYYMMDD | `"20180930"` |
| `tktDisc` | The last date ticketing is valid for the Category Record 3 provisions | String | YYYYMMDD | `"20180930"` |
| `rsvEff` | The first date reservations can be made for the Category Record 3 provisions | String | YYYYMMDD | `"20180930"` |
| `rsvDisc` | The last date reservations can be made for the Category Record 3 provisions | String | YYYYMMDD | `"20180930"` |

### 995 Geographic Specification Fields	
| Field Name | Description | Type | Format | Example |
| ---------- | ----------- | ---- | ------ | ------- |
| `geoSpec995` | Wrapper for 995 Subdomain | Collection of key-value pairs | &nbsp; | `{ }` |
| `type` | Indicates the type of geographic specified for the location or TSI for the Category Record 3 provisions | String (max 1-character) | `"A"` = Area; `"Z"` = Iata Zone ; `"S"` = State ;`"C"` = City ;`"P"` = Airport ;`"N"` = Nation |
| `loc1` | The first specified location valid for the Category Record 3 provisions | String max (5-character) | `"1"` = one digit numeric Area designator; `"210"` = 3 digit numeric assigned Iata Zone ; `"FL US"` = 5 digit including a space ;`"NYC"` = 3 digit alpha City code ;`"EWR"` = 3 digit alpha Airport code ;`"US"` = 2 digit alpha Iata Nation/Country code |
| `loc2` | The last specified location valid for the Category Record 3 provisions | String max 5- (character) | `"1"` = one digit numeric Area designator; `"210"` = 3 digit numeric assigned Iata Zone ; `"FL US"` = 5 digit including a space ;`"NYC"` = 3 digit alpha City code ;`"EWR"` = 3 digit alpha Airport code ;`"US"` = 2 digit alpha Iata Nation/Country code |
| `tsi` | Travel Segment Indicator valid for the Record 3 provisions | String max 2 -(character) | `"03"` = 2 digit numeric TSI as defined |

### 996 Note Text
| Field Name | Description | Type | Format | Example |
| ---------- | ----------- | ---- | ------ | ------- |
| `noteTxt996` | Wrapper for 996 Table | Collection of key-value pairs | &nbsp; | `{ }` |
| `txtLns` | Collection of lines of free-form text specified in the request | Array of collections of key-value pairs | &nbsp; | `[ { "lnNum": "1", "txt": "THIS IS SAMPLE NOTE TEXT" }, ... ]` |
| `lnNum` | Line number indicating the placement of the associated `txt` field | String | # | `"1"` |
| `txt` | The text to be printed at the corresponding `lnNum` (line number) | String | Free-form text | `"THIS IS SAMPLE NOTE TEXT"` |

### General Fields
| Field Name | Description | Type | Format | Example |
| ---------- | ----------- | ---- | ------ | ------- |
| `rtnTblNumsOnly` | Indicates whether to display the created table numbers and the data values specified in the Request. When set to `"Y"` (True), ONLY the table numbers will display in the Response. Default is `"N"` (False). | String (max 1-character) | `"Y"` = True; `"N"` = False | `"N"` |
| `tblNum` | Indicates an existing 900 series table in a request or generated in a response when data has been created | String | ##### | `"4035046"` |

# Response
Responses from Advanced Reservations (Category 5) Rules Web Service use the same parameters as requests, outlined above. Responses can also include `msg` and `msgs`, which are used to communicate error messages.

# Example Requests and Responses

## Simple Category Request
(display only table numbers in response)
****Request****
```javascript
{
    "rtnTblNumsOnly": "Y",
    "advancedres05": {
        "resStartTime": "1400",
        "resStartDayOfWeek": "Mon",
        "resStartOccurence": "1",
        "resStartDuration": "15",
        "resStartUnit": "N"
    }
}
```
**Response**
```javascript
{
    "rtnTblNumsOnly": "Y",
    "advancedres05": {
        "tblNum": "4018862"
    }
}
```

## Simple Category Request with Supporting Table 994
(display table numbers and values in response)
**Request**
```javascript
{
    "rtnTblNumsOnly": "Y",
    "advancedres05": {
        "resStartTime": "1400",
        "resStartDayOfWeek": "Mon",
        "resStartOccurence": "1",
        "resStartDuration": "15",
        "resStartUnit": "N",
        "ovrrdDt994": {
            "rsvEff": "20190629"
        }
    }
}
```
**Response**
```javascript
{
    "rtnTblNumsOnly": "Y",
    "advancedres05": {
        "tblNum": "4018861",
        "ovrrdDt994": {
            "tblNum": "107154"
        }
    }
}
```

## Full Category Request
(display only table numbers in response)
**Request**
```javascript
{
    "rtnTblNumsOnly": "Y",
    "advancedres05": {
        "resStartTime": "1400",
        "resStartDayOfWeek": "Mon",
        "resStartOccurence": "1",
        "resStartDuration": "15",
        "resStartUnit": "N",
        "resStopTime": "1800",
        "resStopDayOfWeek": "Mon",
        "resStopOccurence": "1",
        "resStopDuration": "15",
        "resStopUnit": "N",
        "resMeasuredFromTsi": "03",
        "confirmedSector": "X",
        "resWaiverDate": "20190915",
        "tktIssueTime": "0100",
        "tktDayofWeek": "Mon",
        "tktOccurrence": "1",
        "tktDuration": "15",
        "tktUnit": "N",
        "tktPermittedIndicator": "R",
        "depatureDuration": "15",
        "depatureUnit": "N",
        "tktMeasuredFromTsi": "03",
        "applyWhichever": "E",
        "tktWaiverDuration": "2",
        "tktWaiverUnit": "N",
        "tktWaiverDate": "20190915",
        "ovrrdDt994": {
            "tvlEff": "20190723",
            "tvlDisc": "20190731",
            "tktEff": "20190723",
            "tktDisc": "20190731",
            "rsvEff": "20190723",
            "rsvDisc": "20190731"
        },
        "geoSpec995": {
            "loc1": "SEA",
            "type": "C",
            "loc2": "MAD",
            "tsi": "01"
        },
        "noteTxt996": {
            "txtLns": [
                {
                    "lnNum": "1",
                    "txt": "THIS IS SAMPLE NOTE TEXT TO ILLUSTRATE"
                },
                {
                    "lnNum": "2",
                    "txt": "          INDENTATION AND LINE BREAKS"
                },
                {
                    "lnNum": "3",
                    "txt": "                IN YOUR REQUEST AND RESPONSE."
                },
                {
                    "lnNum": "4",
                    "txt": "WE HOPE THAT YOU ARE ENJOYING OUR DEMO.."
                }
            ]
        }
    }
}
```
**Response**
```javascript
{
    "rtnTblNumsOnly": "Y",
    "advancedres05": {
        "tblNum": "4018856",
        "ovrrdDt994": {
            "tblNum": "102835"
        },
        "geoSpec995": {
            "tblNum": "309883"
        },
        "noteTxt996": {
            "tblNum": "8308560"
        }
    }
}
```

## Simple Category Request Using Data and Existing Table Number
(display table number and values in response)
**Request**
```javascript
{
    "rtnTblNumsOnly": "N",
    "advancedres05": {
        "resStartTime": "1400",
        "resStartDayOfWeek": "Mon",
        "resStartOccurence": "1",
        "resStartDuration": "15",
        "resStartUnit": "N",
        "resStopTime": "1800",
        "resStopDayOfWeek": "Mon",
        "resStopOccurence": "1",
        "resStopDuration": "15",
        "resStopUnit": "N",
        "resMeasuredFromTsi": "03",
        "confirmedSector": "X",
        "resWaiverDate": "20190915",
        "tktIssueTime": "0100",
        "tktDayofWeek": "Mon",
        "tktOccurrence": "1",
        "tktDuration": "15",
        "tktUnit": "N",
        "tktPermittedIndicator": "R",
        "depatureDuration": "15",
        "depatureUnit": "N",
        "tktMeasuredFromTsi": "03",
        "applyWhichever": "E",
        "tktWaiverDuration": "2",
        "tktWaiverUnit": "N",
        "tktWaiverDate": "20190915",
        "ovrrdDt994": {
            "tblNum": "102835"
        }
    }
}
```
**Response**
```javascript
{
    "rtnTblNumsOnly": "N",
    "advancedres05": {
        "tblNum": "4018857",
        "resStartTime": "1400",
        "resStartDayOfWeek": "Mon",
        "resStartOccurence": "1",
        "resStartDuration": "15",
        "resStartUnit": "N",
        "resStopTime": "1800",
        "resStopDayOfWeek": "Mon",
        "resStopOccurence": "1",
        "resStopDuration": "15",
        "resStopUnit": "N",
        "resMeasuredFromTsi": "03",
        "resWaiverDate": "20190915",
        "tktIssueTime": "0100",
        "tktDayofWeek": "Mon",
        "tktOccurrence": "1",
        "tktDuration": "15",
        "tktUnit": "N",
        "tktPermittedIndicator": "R",
        "depatureDuration": "15",
        "depatureUnit": "N",
        "tktMeasuredFromTsi": "03",
        "applyWhichever": "E",
        "tktWaiverDuration": "2",
        "tktWaiverUnit": "N",
        "tktWaiverDate": "20190915",
        "ovrrdDt994": {
            "tblNum": "102835"
        }
    }
}
```


