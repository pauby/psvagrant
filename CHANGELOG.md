## v0.2.1 2 August 2018
* Added display of saved Vagrant machines (using ~# where # is the number of machines in a saved state);

## v0.2.0 13 July 2018
* Previous versions took the original module and just updated it. This release see a complete rewrite of the code and removal of a lot of it. We are left with four functions and some of it has no documentation which will come. If you want to get the details into the prompt use `Write-VagStatus`

## v0.1.1 4 July 2018
* Fixed issue where a corrupt Vagrant index would cause an exception to be thrown. When being used in a prompt this exception wouldn't be seen and causes strange PowerShell behaviour. If corruption is detected, or attention needed, then [!!!] will be shown;

## v0.1 16 June 2018
* Initial release;