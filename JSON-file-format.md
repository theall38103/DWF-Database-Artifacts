# JSON File format for DWF Database Artifacts entry

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
    "CVSSv2": {
      "VERSION": "1.0",
      "BM": {
        "AV": "N.N",
        "AC": "N.N",
        "AU": "N.N",
        "C": "N.N",
        "I": "N.N",
        "A": "N.N",
        "SCORE": "N.N",
        "NOTES": "string"
      },
      "TM": {
        "E": "N.N",
        "RL": "N.N",
        "RC": "N.N",
        "SCORE": "N.N",
        "NOTES": "string"
      },
      "EM": {
        "CD": "N.N",
        "TD": "N.N",
        "CR": "N.N",
        "IR": "N.N",
        "AR": "N.N",
        "SCORE": "N.N",
        "NOTES": "string"
      },
      "NOTES": "string"
    },
    "CVSSv3": {
      "VERSION": "1.0",
      "AV": "N.N",
      "AC": "N.N",
      "PR": "N.N",
      "UI": "N.N",
      "S": "N.N",
      "C": "N.N",
      "I": "N.N",
      "A": "N.N",
      "SCORE": "N.N",
      "NOTES": "string"
    },
    "AFFECTS": [
      {
        "VERSION": "1.0",
        "VENDOR": "string",
        "NAME": "string",
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

# VERSION

# UPDATED

# SERIAL

# DWF

# COMMUNITY

# EXPERIMENTAL

# VENDOR

## Vendor example name

### Product Example Name

