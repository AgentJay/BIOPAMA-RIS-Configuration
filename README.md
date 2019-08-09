# BIOPAMA-RIS-Core

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

## **IMPORTANT NOTE**
The **/biopama-config/DEFAULT_map_settings.js MUST be renamed to /biopama-config/map_settings.js** to ensure that the settings are not replaced if there is an update to the configuration options at a later date. And to acctually make it work since the RIS is looking for map_settings.js.

## TODO
- Remove testing modules from composer
- Create Additional Module to manage the Content types and views so a database clone is no longer needed.
