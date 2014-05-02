vsh
===========

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