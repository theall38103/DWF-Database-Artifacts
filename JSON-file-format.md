# JSON File format for DWF Database Artifacts entry

# Definition of terms

## OPTIONAL

1.0: If a field is OPTIONAL it does not need to be included. 

## MANDATORY

1.0: If a field is MANDATORY it MUST be included or else the entry is invalid.

## SUGGESTED

1.0: If a field is SUGGESTED it SHOULD be included or else there is a strong chance the entry will not be accepted.

# Example file

```
{
  "VERSION": "1.0",
  "UPDATED": "DATE-TIMESTAMP",
  "SERIAL": "INT",
  "NOTES": "string",
  "DWF": {
    "VERSION": "1.0",
    "CVE_ID": "CVE-YEAR-NNNNNNN",
    "CWE": "X",
    "CVSSv2": {
      "VERSION": "1.0",
      "BM": {
        "AV": "X",
        "AC": "X",
        "AU": "X",
        "C": "X",
        "I": "X",
        "A": "X",
        "SCORE": "N.N",
        "NOTES": "string"
      },
      "TM": {
        "E": "X",
        "RL": "X",
        "RC": "X",
        "SCORE": "N.N",
        "NOTES": "string"
      },
      "EM": {
        "CDP": "X",
        "TD": "X",
        "CR": "X",
        "IR": "X",
        "AR": "X",
        "SCORE": "N.N",
        "NOTES": "string"
      },
      "NOTES": "string"
    },
    "CVSSv3": {
      "VERSION": "1.0",
      "BM": {
        "AV": "X",
        "AC": "X",
        "PR": "X",
        "UI": "X",
        "S": "X",
        "C": "X",
        "I": "X",
        "A": "X",
        "SCORE": "N.N",
        "NOTES": "string"
      },
      "TM": {
        "E": "X",
        "RL": "X",
        "RC": "X",
        "SCORE": "N.N",
        "NOTES": "string"
      },
      "EM": {
        "CR": "X",
        "IR": "X",
        "AR": "X",
        "MAV": "X",
        "MAC": "X",
        "MPR": "X",
        "MUI": "X",
        "MS": "X",
        "MC": "X",
        "MI": "X",
        "MA": "X",
        "SCORE": "N.N",
        "NOTES": "string"
      }
    },
    "AFFECTS": [
      {
        "VERSION": "1.0",
        "VENDOR": "string",
        "PRODUCT": "string",
        "CPE": "cpe_string",
        "AFFECTED": ["1.0", "1.2.6"],
        "FIXEDIN": ["1.3", "1.2.7"],
        "NOTES": "string"
      }
      ],
      "DESCRIPTION": "String description of issue",
      "SOURCES": [
        {
          "VERSION": "1.0",
          "NAME": "name of source (can be URL)",
          "DESCRIPTION": "description of source",
          "TYPE": "Web page/PDF/text file/email/etc.",
          "URL": ["one or more urls to this source"],
          "IMPORTTIME": "DATE-TIMESTAMP",
          "LOCALNAME": "local filename/dir",
          "NOTES": "string"
        }
      ],
      "EXPLOITATION": "string",
      "WORKAROUND": "string",
      "NOTES": "string"
  },
  "COMMUNITY": {
    "VERSION": "1.0"
  },
  "EXPERIMENTAL": {
    "VERSION": "1.0"
  },
  "VENDOR": {
    "VERSION": "1.0",
    "Example Vendor Name": {
      "VERSION": "1.0",
      "CVSSv2": "same as in DWF section",
      "CVSSv3": "same as in DWF section",
      "AFFECTS": "same as in DWF section",
      "DESCRIPTION": "same as in DWF section",
      "SOURCES": "same as in DWF section",
      "EXPLOITATION": "same as in DWF section",
      "WORKAROUND": "same as in DWF section",
      "NOTES": "same as in DWF section",
      "Example Product Name": {
        "VERSION": "1.0",
        "CVSSv2": "same as in DWF section",
        "CVSSv3": "same as in DWF section",
        "AFFECTS": "same as in DWF section",
        "DESCRIPTION": "same as in DWF section",
        "SOURCES": "same as in DWF section",
        "EXPLOITATION": "same as in DWF section",
        "WORKAROUND": "same as in DWF section",
        "NOTES": "same as in DWF section"
      }
    }
  }
}
```

# Minimum file

An example of a minimum file. Please note that the AFFECTS data is not MANDATORY but only SUGGESTED, however an entry would be unlikely to be included without some AFFECTS data unless special circumstances apply. The description is required for PUBLIC entries (that is to say published in our database), please consult our writing guidelines, alteratively if sufficient other data (AFFECTS, CVSSv2 or CVSSv3 scoring data and so on) is provided the DWF can write the entry (indeed it is our hope to automate descriptions based on data for the vulnerability). Simply search for "MINIMUM" to find the descriptions for the various components needed to make a minimal entry.

```
{
  "VERSION": "1.0",
  "UPDATED": "DATE-TIMESTAMP",
  "SERIAL": "INT",
  "DWF": {
    "CVE_ID": "CVE-YEAR-NNNNNNN",
    "CWE": "X",
    "AFFECTS": [
      {
        "PRODUCT": "string",
        "AFFECTED": ["1.0", "1.2.6"],
        "FIXEDIN": ["1.3", "1.2.7"],
      }
      ],
      "DESCRIPTION": "String description of issue",
      "SOURCES": [
        {
          "URL": ["one or more urls to this source"],
          "LOCALNAME": "local filename/dir",
        }
      ]
  }
}
```

# VERSION

1.0: The JSON file has various information sections (the global section, the DWF section, etc.) and some of these sections can have subsections (the CVSSv2, CVSSv3, AFFECTED data and so on). The format of these sections may be updated to include new information or change how information is presented. In order to signal what version of data formatting is in use the JSON file has a global version, and sections and subsections can have their own versions. This means that data formatted in old formats (e.g. the 1.0 definition) can continue to exist in a file with other sections that have been updated (e.g. to 1.1). The version of formatting used in a section is the same as defined in it's parent section unless otherwise explicitly stated (so until there is an update to the 1.0 format all data can be assumed to be in the 1.0 format). Required for the MINIMUM entry. 

# UPDATED

1.0: The latest date and time (in ISO 8601 format) that this information was updated. Needed for the MINIMUM entry. MANDATORY

# SERIAL

1.0: An integer serial number for the entry that starts at "1" is incremented by 1 for every update commited. Needed for the MINIMUM entry. MANDATORY

# DWF

The DWF hierarchy of data is strictly formatted and MUST conform to documnted standards or else it will be rejected.

## VERSION

1.0: The version of the specification in use. MANDATORY

## CVE_ID

1.0: The CVE number assigned to this issue. Needed for the MINIMUM entry. MANDATORY

## CWE

1.0: The CWE ID in the form "CWE-N" or a string of vulnerabilities that describe this issue, comma seperated (e.g. "CWE-N,CWE-N2" or a text string describing the type of vulnerability if no CWE is available to describe it (e.g. "Intersection vulnerability of permissions provided and expected between different components X and Y". Please note that if you cannot describe the vulnerability using CWE or a text description it is highly unlikely we'll assign a CVE, let alone include it in the DWF database. Needed for the MINIMUM entry. SUGGESTED

## CVSSv2

1.0: The CVSSv2 scoring data, split up into Base Metrics Group (BM), Temporal Metrics Group (TM) and Environmental Metrics Group (EM). OPTIONAL

### VERSION

1.0: The version of the CVSSv2 data specification in use. MANDATORY

### BM

1.0: The Base Metrics Group OPTIONAL

#### AV

1.0: The Access Vector, must be "L", "A" or "N". OPTIONAL

#### AC

1.0: The Access Complexity, must be "H", "M" or "L". OPTIONAL

#### AU

1.0: The Authentication, must be "M", "S" or "N". OPTIONAL

#### C

1.0: The Confidentiality impact, must be "N", "P" or "C". OPTIONAL

#### I

1.0: The Integrity impact, must be "N", "P" or "C". OPTIONAL

#### A

1.0: The Availability impact, must be "N", "P" or "C". OPTIONAL

#### SCORE

1.0: The CVSSv2 Base Metrics Group score assuming all elements are present. OPTIONAL

#### NOTES

1.0: A notes field for the CVSSv2 Base Metrics Group that consists of a string of text data. OPTIONAL

### TM

1.0: The Temporal Metrics Group. OPTIONAL

#### E

1.0: Exploitability, must be "U", "POC", "F", "H" or "ND". OPTIONAL

#### RL

1.0: Remediation Level, must be "OF", "TF", "W", "U" or "ND". OPTIONAL 

#### RC

1.0: Report Confidence, must be "UC", "UR", "C" or "ND". OPTIONAL

#### SCORE

1.0: The CVSSv2 Temporal Metrics Group score assuming all elements are present. OPTIONAL

#### NOTES

1.0: A notes field for the CVSSv2 Temporal Metrics Group that consists of a string of text data. OPTIONAL

### EM

1.0: The Environmental Metrics Group. OPTIONAL

#### CDP

1.0: The Collateral Damage Potential, must be "N", "L", "LM", "MH", "H" or "ND". OPTIONAL

#### TD

1.0: The Target Distribution, must be "N", "L", "M", "H" or "ND". OPTIONAL

#### CR

1.0: Security Requirements Confidentiality, must be "L", "M", "H" or "ND". OPTIONAL

#### IR

1.0: Security Requirements Integrity, must be "L", "M", "H" or "ND". OPTIONAL

#### AR

1.0: Security Requirements Availability, must be "L", "M", "H" or "ND". OPTIONAL

#### SCORE

1.0: The CVSSv2 Temporal Metrics Group score assuming all elements are present. OPTIONAL

#### NOTES

1.0: A notes field for the CVSSv2 Environmental Metrics Group that consists of a string of text data. OPTIONAL

### NOTES

1.0: A notes field for the CVSSv2 section that consists of a string of text data. OPTIONAL

## CVSSv3

1.0: The CVSSv3 scoring data. OPTIONAL

### VERSION

1.0: The version of the CVSSv3 data specification in use. OPTIONAL

### BM

1.0: The Base Metric Group scoring information. OPTIONAL

#### AV

1.0: The Attack Vector

#### AC

1.0: The Attack Complexity

#### PR

1.0: The Privileges Required

#### UI

1.0: The User Interaction

#### S

1.0: The Scope

#### C

1.0: The  Confidentiality Impact

#### I

1.0: The Integrity Impact

#### A

1.0: The Availability Impact

#### SCORE

1.0: The CVSSv3 score. OPTIONAL

#### NOTES

1.0: A notes field for the CVSSv2 section that consists of a string of text data. OPTIONAL

### TM

1.0: The Temporal Metric Group scoring information. OPTIONAL

### EM

1.0: The Environmental Metric Group scoring information. OPTIONAL

## AFFECTS

1.0: An array of one or more entries. Each entry has self identifying information. Please note that this data may also exist under the Vendor hierarchy for specific vendor and vendor/product combinations. This global entry is meant to reflect the original "upstream" version vulnerability information. Needed for the MINIMUM entry. MANDATORY

### VERSION

1.0: The version of the AFFECTS data specification in use. OPTIONAL

### VENDOR

1.0: The vendor name. SUGGESTED

### PRODUCT

1.0: The product name. Needed for the MINIMUM entry. SUGGESTED

### CPE

1.0: The product CPE. OPTIONAL

### AFFECTED

1.0: The version of the product that is vulnerable. This is an array of one or more values, the values can be a version number, or a version number with ">" (greather then, not including the version specified), "<" (less then, not including the version specified), ">=" (greather then or equal to, so including the version specified) or "<=" (less then or equal to, so including the version specified) prepended to it. Needed for the MINIMUM entry. SUGGESTED

### FIXEDIN

1.0: The version of the product that is fixed. This is an array of one or more values, the values can be a version number, or a version number with ">" (greather then, not including the version specified), "<" (less then, not including the version specified), ">=" (greather then or equal to, so including the version specified) or "<=" (less then or equal to, so including the version specified) prepended to it. Needed for the MINIMUM entry. SUGGESTED

### NOTES

1.0: Notes on the affected/fixed version of the software. OPTIONAL

## DESCRIPTION

1.0: A description of the issue. It should be in the format of:

```
[Vendor name] [product name] version [version info] is vulnerable to a [flaw type] in the [component] resulting [some impact]. 
```

The description, or sufficient data to write one is required. Needed for the MINIMUM entry. MANDATORY

## SOURCES

1.0: An array of one or more entries. Each entry has self identifying information. Please note that this data may also exist under the Vendor hierarchy for specific vendor and vendor/product combinations. This global entry is meant to reflect the original "upstream" version vulnerability information. Needed for the MINIMUM entry. MANDATORY

### VERSION

1.0: The version of the SOURCE data specification in use. OPTIONAL

### NAME

1.0: The name of the source. OPTIONAL

### DESCRIPTION

1.0: The description of the source. OPTIONAL

### TYPE

1.0: The type of source, values must be "email", "www", "file". OPTIONAL

### URL

1.0: The URL for the sources, must be a valid URL, or may be an email address (e.g. if the file is sent directly to us and not available on a web server). Needed for the MINIMUM entry. MANDATORY

### IMPORTTIME

1.0: When the data was imported. OPTIONAL

### LOCALNAME

1.0: The local name (file or directory) of the artifact, relative to directory for this CVE. Needed for the MINIMUM entry. MANDATORY

### NOTES

1.0 Any notes on this source item. OPTIONAL

## EXPLOITATION

1.0: A field describing exploitation, it consists of a string of text data. This field may be expanded in the future. OPTIONAL

## WORKAROUND

1.0: A field describing workarounds, it consists of a string of text data. This field may be expanded in the future. OPTIONAL

## NOTES

1.0: A notes field for the global section that consists of a string of text data. OPTIONAL

# COMMUNITY

1.0: The community hierarchy is planned ofr future use, most likely guidelines will be issued. OPTIONAL

# EXPERIMENTAL

1.0: The experimental hierarchy is planned for future use, most likely guidelines will be issued. OPTIONAL

# VENDOR

1.0: The vendor hierarchy is for vendor and product specific data (e.g. affected versions/etc.). Essentially all the data that exists within the DWF hierarchy can exist within a vendor or vendor/product section. OPTIONAL

## Vendor example name

1.0: The vendor section is for vendor specific data (e.g. affected versions/etc.). Essentially all the data that exists within the DWF hierarchy can exist within a vendor section. The "Vendor exmaple name" should actually be set to the name of the vendor. OPTIONAL

### Product Example Name

1.0: The product section is for vendor/product specific data (e.g. affected versions/etc.). Essentially all the data that exists within the DWF hierarchy can exist within a vendor/product section. The "Product exmaple name" should actually be set to the name of the product. OPTIONAL
