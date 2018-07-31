# Install-Module -Name SharePointPnpPowerShellOnline -FOrce -SkipPublisherCheck

Import-Module Microsoft.Online.SharePoint.Powershell -Verbose

# Connect-SPOService -Url "https://[tenant]-admin.sharepoint.com"

Connect-PnPOnline -Url "https://[tenant]-admin.sharepoint.com"

New-PnPSite -Type TeamSite -title "Contoso marketing division" -alias "marketing" -Description "Main site for collaboration for marketing teams at Contoso"

Register-SPOHubSite -Site https://[tenant].sharepoint.com/sites/marketing

Set-SPOHubSite -Identity https://[tenant].sharepoint.com/sites/marketing -LogoUrl https://[tenant].sharepoint.com/marketing/SiteAssets/nihlogo.png -Description "Main hub site for collaboration on marketing activities across Contoso"

Grant-SPOHubSiteRights -Identity https://[tenant].sharepoint.com/sites/marketing -Principals "admin@[tenant].onmicrosoft.com" -Rights Join

New-PnPSite -Type TeamSite -title "Online advertising team" -alias "online-advertising" -Description "For collaboration on online advertising resources"

Add-SPOHubSiteAssociation -Site https://[tenant].sharepoint.com/sites/online-advertising -HubSite https://[tenant].sharepoint.com/sites/marketing