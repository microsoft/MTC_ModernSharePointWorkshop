# Install-Module AzureADPreview -Force -AllowClobber

Import-Module AzureADPreview

# Get-Module AzureADPreview
# Remove-Module -name AzureAD


Connect-AzureAD

$template = Get-AzureADDirectorySettingTemplate | where {$_.DisplayName -eq “Group.Unified”}

$spoBaseUrl = “https://[tenant].sharepoint.com” 

$setting = $template.CreateDirectorySetting() 
$setting[“UsageGuidelinesUrl”] = $spoBaseUrl 
$setting[“ClassificationList”] = “Highly Sensitive, Sensitive, General, Not Work Related” 
$setting[“DefaultClassification”] = “General”
$setting["CustomBlockedWordsList"] = "Payroll,CEO,HR"
$setting["PrefixSuffixNamingRequirement"] = “[Department]-[GroupName]”

#New-AzureADDirectorySetting –DirectorySetting $setting
Set-AzureADDirectorySetting -Id (Get-AzureADDirectorySetting | where -Property DisplayName -Value "Group.Unified" -EQ).id -DirectorySetting $Setting

Get-AzureADDirectorySetting -All $True

# 5ef3462a-5e8e-424a-9293-85f0279eae28
(Get-AzureADDirectorySetting -Id 5ef3462a-5e8e-424a-9293-85f0279eae28).values


# https://[tenant].sharepoint.com/sites/Sales-ProjectA/_api/site/Classification

