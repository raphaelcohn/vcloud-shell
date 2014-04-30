vcloud-curl
===========

vCloud Curl Tools


* consider integration with logger, so we can start doing some audit recording
* move configuration into api.conf and curl.conf
* change args list to VERB:URL:OPTIONALFILE:FORMAT (XML or PARSED)
* or read lines from standard in (verb, url, optional file, format) as a sort of mini-shell
* or just take stdin as the document to post
* xmlstarlet with error messages


Shell
Design vcloud-shell

- given a list of command lines are stdin or after the command
- record each lines stdout in a file, so a subsequent line can reference a previous one
- possibly commands to reformat output (eg was links, now give me it as id)