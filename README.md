vcloud-shell
===========
A shell, called vsh, based on curl, for mixing API calls to vCloud providers (such as Terremark and Skyscape) and general bash syntax.

Provides a script syntax (.vsh files) that can execute a sequence of commands.

Uses good ol'fashioned netrc files for managing credentials securely. Works properly with proxies, using curlrc files.


vCloud Curl Tools

* consider integration with logger, so we can start doing some audit recording
* Refactor
	* metadata API calls
	* caching (key generation is cacheable)
	* loop over href / mimeType / rel / name normalisation
    * make more variables readonly (perhaps register a function that makes variables readonly in main?)
    * generic format logic?
    * upload logic for media should be used for vAppTemplates
    * remove logic for media should be used for vAppTemplates
* support CentOS and Debian paths
* support background downloading of OVF
* build
  * replace list of validate checks for defaults
  * generate help for commands in shell
  * generate help block
  * man page
* records and queries
	* references / records / idrecords for EdgeGateways, VDC networks
	* ditto for /api/query
	
* FIX METADATA format (eg org-metadata) (prefixes)
* FIX task formatting - seems broken for enableDownload?
* FIX curl to check 7.21.5 added --netrc-file

## Explore in VDC
* https://api.vcd.portal.skyscapecloud.com/api/vdc/2ed07e0b-ec25-44f4-9477-0b53de01bbd6/action/instantiateOvf	application/vnd.vmware.vcloud.instantiateOvfParams+xml	add
* https://api.vcd.portal.skyscapecloud.com/api/vdc/2ed07e0b-ec25-44f4-9477-0b53de01bbd6/action/instantiateVAppTemplate	application/vnd.vmware.vcloud.instantiateVAppTemplateParams+xml	add
* https://api.vcd.portal.skyscapecloud.com/api/vdc/2ed07e0b-ec25-44f4-9477-0b53de01bbd6/disk	application/vnd.vmware.vcloud.diskCreateParams+xml	add


##examples
find a way to validate formats
refactor formats

## unrecorded downloads
vdc/vAppTemplate/ download and enableDownload
vdc/media/metadata/* (incl getValue, which could be cached, but might not be appropriate)