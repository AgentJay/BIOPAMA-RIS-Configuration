# BIOPAMA-RIS

## How to setup a copy of the BIOPAMA RIS
1. Install Composer "Globally" on your webserver (https://getcomposer.org/doc/00-intro.md#system-requirements)
1. Depoly this repo to the root of your web directory.
1. Run ```composer install``` - this will install Drupal, and all the modules the RIS currently uses. (TODO - Remove modules in testing)
1. Deploy the BIOPAMA Form Hooks module (https://github.com/AgentJay/biopama_form_hooks) in the ```/modules/custom``` directory
1. Deploy the bootstrap_barrio_biopama Theme (https://github.com/AgentJay/bootstrap_barrio_biopama) in the ```/themes/custom``` directory
1. Follow the instructions to generate your own regional MAPs in the BIOPAMA Map Tiles repo (https://github.com/AgentJay/BIOPAMA-map-tiles)

## **IMPORTANT NOTE**
The **/biopama-config/DEFAULT_map_settings.js MUST be renamed to /biopama-config/map_settings.js** to ensure that the settings are not replaced if there is an update to the configuration options at a later date. And to acctually make it work since the RIS is looking for map_settings.js.
