---
title: REST Services
icon: fa-book
order: 7
---
## What REST Services are? 

## RIS Action Component REST Services
REST services are a simple - but advanced - method to 'recall' and present data stored somewhere else. One of the advantages of recalling data through REST services is that the information is dinamically updated to its latest version. 

### URL Structure
They look like a standard URL. 
The BIOPAMA REST services return only json format, and the URL contains a standard format as follows:
/ac_rest/pa/country/%

### The URL is composed of 4 parts known as “arguments”:
1.	/ac_rest – this is the endpoint for all the “Action Component” REST services and must always be present when making a request
1.	/pa* – The “return scope” from the request. In this case the results will include ALL Protected Area priorities for action. 
1.	/country* - The “filter type” is what you are filtering by. In this case the request in combination with the previous argument combine to show all protected area priorities for action in a particular country.
1.	/%** - This is the “filter”. It must be replaced by a value that corresponds to the previous argument.
*The “return” and the “filter type” can be one of the following: region, country, pa
**The filter corresponds to the filter type defined:

region – Region ID (caribbean, pacific, southern_africa, eastern_africa, western_africa, central_africa)
country – country ISO2 code
pa – WDPA ID
all – returns ALL results at the selected “return scope” with no filter

### Examples:
/ac_rest/pa/country/MW
Shows all Protected Area priority actions in Malawi (Country ISO2 = MW)

/ac_rest/country/pa/9400
Shows all the Countries priority actions where Nkhotakota Wildlife Reserve (WDPA ID = 9400) is located

/ac_rest/region/country/MW
Shows all the regions priority actions for the region where Malawi is located 

/ac_rest/region/region/7
Shows the regions priority actions in region 7 (Southern Africa)

/ac_rest/region/region/all
Shows all regional priorities

