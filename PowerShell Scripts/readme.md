# PowerShell Scripts for Demos

## Classification.ps1

This PowerShell script demonstrates how to add governance policies to the site creation process. It enforces a naming convention for the modern sites adding the Azure AD attribute of Department as a prefix. The script also shows how to add a blocked word list to keep users from creating sites that appear to be organizational sites such as HR. It adds a custom URL for the Usage Guidelines and includes a classification system for sensitivity of the site.

## CustomerTrackingSiteDesign.ps1

This PowerShell script shows how to create a custom list with custom columns as part of a "template" for a modern team site. The creation of the list is captured as a site script and included as a site design.

## CustomTheme.ps1

This PowerShell script shows how to register a custom theme for modern SharePoint sites. It also shows how to enable/hide the out of the box themes.

## HubSites.ps1

This PowerShell script creates 2 site collections, designates one as a hub site, and associates the remaining site to the hub. It also adds a security control to specify who is allowed to join associated sites to the hub.

## SiteScriptwithFlow.ps1

This PowerShell script demonstrates how to call a custom Flow from within a site script.
