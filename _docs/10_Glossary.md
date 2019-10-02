---
title: GLOSSARY
icon: fa-book
order: 8
---
## TERMINOLOGY

AC – The BIOPAMA Action Component provides funding opportunities to address protected and conserved areas, sustainable use of biodiversity, natural resources priorities for actions on the ground in Africa, the Caribbean and the Pacific (ACP) countries.

Diagnostic tools encompass quantified management and governance assessment tools (including IMET, PAME tools – e.g. METT, RAPPAM, the IUCN Green List of Protected and Conserved Areas, EoH, or equivalent) or, if not available, strategic documents at the protected area, national and regional levels and studies validated by PA management authorities. 

IMET – Integrated Management Effectiveness Assessment Tool 

Key stakeholders for the BIOPAMA programme include: Protected area authorities; site managers; CBD focal points for the Convention on Biological Diversity (CBD), on protected areas specifically; government agencies that relate to land and national water management, or climate change adaptation and mitigation; and; academic institutions and conservation organisations


PAME – Protected Area Management Effectiveness

Priority areas in wider conservation landscapes include inter alia , for the purpose of the Action, key landscapes for conservation (where identified in ACP Countries), Key Biodiversity Areas (KBAs), Marine Managed Areas, Ecologically or Biologically Significant Marine Areas (EBSAs),  or other protected and conserved areas, where their importance is justified by diagnostic tools  or strategic documents in ACP Countries, including SIDS.

Priority decision-support tools may include, as a minimum, tools that provide accessible, up to date information on the following:
•	The location of important sites for biodiversity (for ecosystem services, KBAs, EBSAs) – 
•	Protected area coverage of the most important sites for biodiversity 
•	OECM coverage of the most important sites for biodiversity
•	Management effectiveness assessments including IMET
•	Equitable governance arrangements at sites
•	Connectivity
•	Compatibility with the production sectors in landscapes and seascapes 


Protected Areas means both protected areas, and conserved areas. Conserved areas include sites that meet the definition for Other Effective Area-Based Conservation Measures (OECMs), as agreed by Parties to the Convention on Biological Diversity (CBD): CBD/COP/Dec/14/8

RIS – Reference Information System, provides data on the global status and trends of protected areas and other spatial and non-spatial information relevant to protected areas

RRIS – Regional Reference Information Systems – provides regional information on the status and trends of protected areas, other spatial and non-spatial information at a regional level, and compiles and channels information to the WDPA

ROs – Regional Observatories –are the institutions that convene and manage information flow at a regional level, and that house the Regional Reference Information Systems, among other regional coordination functions.

Status of Protected Areas indicator may include, inter alia, information about the site name, designation, WDPA ID (as applicable), year of establishment, total site area, spatial info (a polygon boundary or point data), IUCN Governance type , and IUCN Management Category , according the to the standards set out in the User Manual for the World Database on Protected Areas (WDPA) and the World Database on Other Effective Area-Based Conservation Measures: Version 1.6 

Up to date in relation to the records in the RRIS, RIS and WDPA, are records that have been updated within the last five (5) years. 

WDPA – the World Database on Protected Areas, the most comprehensive global database of protected areas, updated on a monthly basis, and used widely to inform planning, policy decisions and management. The WDPA is a joint project coordinated by UN Environment and IUCN. The compilation and management of the WDPA is carried out by UN Environment World Conservation Monitoring Centre (UNEP-WCMC), in collaboration with governments, non-governmental organisations, academia and industry.  

----
## RIS Action Component REST Services
REST services are a simple - but advanced - method to 'recall' and present data stored somewhere else. One of the advantages of recalling data through REST services is that the information is dinamically updated to its latest version. 
----
### URL Structure
They look like a standard URL. 
The BIOPAMA REST services return only json format, and the URL contains a standard format as follows:
/ac_rest/pa/country/%
----
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
----
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

## DIFFERENCE BETWEEN TARGET AND INDICATOR:

- An indicator measures progresses over time against a target value, to be reached within a given timeframe.
- Any goal to achieve within a given timeframe - as stated in the documents such as NBSAPs - also has an associated target. 
- Every indicator showing progresses against targets is recalled in the system through REST services (see above for REST services).

----

## DIFFERENCE BETWEEN TARGET AND PRIORITY ACTION:
- All targets and their related policies should be added to the RIS.	
- However, only some targets is considered in relation to the Action Component.
- The targets related to the Action Component are considered Priority actions.

----
