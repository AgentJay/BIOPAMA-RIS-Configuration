# BIOPAMA-RIS-Core

## [Documentation](https://agentjay.github.io/BIOPAMA-RIS-Core/ "BIOPAMA RIS Documentation")

## How to setup a copy of the BIOPAMA RIS

### The file system
1. Install Composer "Globally" on your webserver (https://getcomposer.org/doc/00-intro.md#system-requirements)
1. Depoly this repo to the root of your web directory.
1. Run ```composer install``` - this will install Drupal into a deafult 'web' folder, and all the modules the RIS currently uses. 
1. Deploy the BIOPAMA Form Hooks module (https://github.com/AgentJay/biopama_form_hooks) in the ```/modules/custom``` directory
1. Deploy the bootstrap_barrio_biopama Theme (https://github.com/AgentJay/bootstrap_barrio_biopama) in the ```/themes/custom``` directory
1. Follow the instructions to generate your own regional MAPs in the BIOPAMA Map Tiles repo (https://github.com/AgentJay/BIOPAMA-map-tiles)

### Next steps 
1. Setup a database in mySQL that will be used for Drupal
1. Follow the Drupal installation instructions in a web browser by navigating to where you set it all up. 
1. Check the Drupal Status page and ensure that everything is OK with permissions and the file system. (Fix any issues it reports) 
1. Right now there's no module to manage the content types and views. So in order to get all the content types generated you must clone the current RIS database. Contact me if you need a copy. You can 'restore' database over the one from the first steps.
1. Clear the cache.
#### Done!

### New Landingpage Module
Here's a link to the new module which can be used to replace the main page in the site:
https://github.com/Martenz/biopama_dashboards
There's a few changes that need to be done if this module that come pagkaged in the updated 'bootstrap_barrio_biopama' theme.
The theme must be updated to the latest version.
And in the settings "/admin/config/system/site-information"
change the "Default Frontpage" to "/landingpage"

## Keeping the BIOPAMA RIS up to date
In the future if there are any changes to any of the 3 main repos:
- biopama_form_hooks
- bootstrap_barrio_biopama
- BIOPAMA-RIS-Core

All you need to do is ```git pull``` from the corresponding git repo directory.
For example: if "biopama_form_hooks" has been updated. Browse to the ```/modules/custom/biopama_form_hooks``` directory in your installation and run the ```git pull```command

If the BIOPAMA-RIS-Core repo was the one that changed you must also run ```composer update``` from the root of your composer project directory where you setup the RIS and then check your drupal site for database-updates in the site status report. 


## **IMPORTANT NOTE**
The **/biopama-config/DEFAULT_map_settings.js MUST be renamed to /biopama-config/map_settings.js** to ensure that the settings are not replaced if there is an update to the configuration options at a later date. And to acctually make it work since the RIS is looking for map_settings.js.

## TODO
- Remove testing modules from composer
- Create Additional Module to manage the Content types and views so a database clone is no longer needed.
