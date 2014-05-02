vcloud-shell
===========
A shell, called vsh, based on curl, for mixing API calls to vCloud providers (such as Terremark and Skyscape) and general bash syntax.

Provides a script syntax (.vsh files) that can execute a sequence of commands.

Uses good ol'fashioned netrc files for managing credentials securely. Works properly with proxies, using curlrc files.


vCloud Curl Tools


* consider integration with logger, so we can start doing some audit recording
* move configuration into api.conf and curl.conf
* change args list to VERB:URL:OPTIONALFILE:FORMAT (XML or PARSED)
* or read lines from standard in (verb, url, optional file, main_format) as a sort of mini-shell
* or just take stdin as the document to post
* xmlstarlet with error messages


Shell
Design vcloud-shell

- split out format commands
- allow ability to clear cache / force cache per line
- implement downloads_last

TODO
* remove a metadata key (? DELETE)
* edit a metadata key (PUT)
* remove all metadata (? DELETE)
