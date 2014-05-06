vcloud-shell
===========
A shell, called vsh, based on curl, for mixing API calls to vCloud providers (such as Terremark and Skyscape) and general bash syntax.

Provides a script syntax (.vsh files) that can execute a sequence of commands.

Uses good ol'fashioned netrc files for managing credentials securely. Works properly with proxies, using curlrc files.


vCloud Curl Tools


* consider integration with logger, so we can start doing some audit recording
* fix format commands
* refactor metadata API calls for media into common code
* implement downloads_last

* records and queries
	* references / records / idrecords for EdgeGateways
	* ditto for /api/query