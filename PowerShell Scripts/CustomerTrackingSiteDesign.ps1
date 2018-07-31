Import-Module Microsoft.Online.SharePoint.Powershell -Verbose
$usercredential = Get-Credential
Connect-SPOService -Url https://[tenant]-admin.sharepoint.com -Credential $usercredential
$site_script = @'
{
 "$schema": "schema.json",
     "actions": [
         {
             "verb": "createSPList",
             "listName": "Customer Tracking",
             "templateType": 100,
             "subactions": [
                 {
                     "verb": "SetDescription",
                     "description": "List of Customers and Orders"
                 },
                 {
                     "verb": "addSPField",
                     "fieldType": "Text",
                     "displayName": "Customer Name",
                     "isRequired": false,
                     "addToDefaultView": true
                 },
                 {
                     "verb": "addSPField",
                     "fieldType": "Number",
                     "displayName": "Requisition Total",
                     "addToDefaultView": true,
                     "isRequired": true
                 },
                 {
                     "verb": "addSPField",
                     "fieldType": "User",
                     "displayName": "Contact",
                     "addToDefaultView": true,
                     "isRequired": true
                 },
                 {
                     "verb": "addSPField",
                     "fieldType": "Note",
                     "displayName": "Meeting Notes",
                     "isRequired": false
                 }
             ]
         }
     ],
         "bindata": { },
 "version": 1
}
'@
Add-SPOSiteScript -Title "Create customer tracking list" -Content $site_script -Description "Creates list for tracking customer contact information"

<#Id          : f31fef9e-3595-4db9-a99a-60787c77d085
Title       : Create customer tracking list
Description : Creates list for tracking customer contact information
Content     : 
Version     : 0
#>

Add-SPOSiteDesign -Title "Contoso customer tracking" -WebTemplate "64" -SiteScripts "f31fef9e-3595-4db9-a99a-60787c77d085" -Description "Tracks key customer data in a list"

<#
Id                  : 00ff0844-e8d5-4635-9ba5-8b4f8f7e46b1
Title               : Contoso customer tracking
WebTemplate         : 64
SiteScriptIds       : {f31fef9e-3595-4db9-a99a-60787c77d085}
Description         : Tracks key customer data in a list
PreviewImageUrl     : 
PreviewImageAltText : 
IsDefault           : False
Version             : 1
#>