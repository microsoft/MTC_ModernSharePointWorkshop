Connect-SPOService -Url https://[tenant]-admin.sharepoint.com

Get-SPOSiteDesign


$site_script = @'
{
    "$schema": "schema.json",
    "actions": [
    {
            "verb": "triggerFlow",
            "url": "https://[URLFORFLOW]",
            "name": "Apply Template",
            "parameters": {
                "event":"",
                "product":""
            }
    }
    ],
    "bindata": {},
    "version": 2
}
'@

Add-SPOSiteScript -Title "Apply PnP Provisioning Template" -Content $site_script
Get-SPOSiteScript

Remove-SPOSiteDesign 70d1d90d-56db-420a-9e16-3aab3ab0a5b5
Remove-SPOSiteScript fc0e3e80-9b8e-45a6-ba43-bad7be34c88a



<# dbdd42ee-b0b3-4df3-baa5-dc9a27a46d67 #>

Add-SPOSiteDesign -Title "Site with footer" -SiteScripts dbdd42ee-b0b3-4df3-baa5-dc9a27a46d67 -WebTemplate "64"

<#
Id                  : 7be9875c-3ca5-46cd-b840-a2ae1e7941ba
Title               : Site with footer
WebTemplate         : 64
SiteScriptIds       : {dbdd42ee-b0b3-4df3-baa5-dc9a27a46d67}
Description         : 
PreviewImageUrl     : 
PreviewImageAltText : 
IsDefault           : False
Version             : 1
#>

$uri = "https://[URLFORFLOW]"
$body = "{webUrl:'https://[tenant].sharepoint.com/sites/footer456'}"
Invoke-RestMethod -Uri $uri -Method Post -ContentType "application/json" -Body $body
