vcloud-shell
===========
A shell, called vsh, based on curl, for mixing API calls to vCloud providers (such as Terremark and Skyscape) and general bash syntax.

Provides a script syntax (.vsh files) that can execute a sequence of commands.

Uses good ol'fashioned netrc files for managing credentials securely. Works properly with proxies, using curlrc files.


vCloud Curl Tools

* consider integration with logger, so we can start doing some audit recording
* refactor metadata API calls for media into common code
* exit / exitError / informationMessage FAIL
* capture versions and sessions in special download and captures?
* support CentOS and Debian paths
* support background downloading of OVF
* build
  * replace list of validate checks for defaults
  * generate help for commands in shell
  * generate help block
  * man page
* XML
  * deal with missing values with a default?
* Defensive
  * make more variables readonly (perhaps register a function that makes variables readonly in main?)

* FIX METADATA format (eg org-metadata) (prefixes)
* FIX task formatting - seems broken for enableDownload?
* HELPER function to iterate over links
  * needs to normalise href, type, name, rel but not skip empty columns

##examples
find a way to validate formats
refactor formats

## unrecorded downloads
vdc/vAppTemplate/ download and enableDownload
vdc/media/metadata/* (incl getValue, which could be cached, but might not be appropriate)

* records and queries
	* references / records / idrecords for EdgeGateways
	* ditto for /api/query