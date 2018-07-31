Connect-SPOService -Url https://[tenant]-admin.sharepoint.com

Get-SPOHideDefaultThemes

$themepalette = @{
"themePrimary" = "#9600d4";
"themeLighterAlt" = "#060008";
"themeLighter" = "#180022";
"themeLight" = "#2c003f";
"themeTertiary" = "#59007f";
"themeSecondary" = "#8200ba";
"themeDarkAlt" = "#9e16d8";
"themeDark" = "#ab35de";
"themeDarker" = "#c066e7";
"neutralLighterAlt" = "#151515";
"neutralLighter" = "#1e1e1e";
"neutralLight" = "#2e2e2e";
"neutralQuaternaryAlt" = "#373737";
"neutralQuaternary" = "#3f3f3f";
"neutralTertiaryAlt" = "#606060";
"neutralTertiary" = "#494304";
"neutralSecondary" = "#918609";
"neutralPrimaryAlt" = "#d5c40d";
"neutralPrimary" = "#f2de0e";
"neutralDark" = "#f5e746";
"black" = "#f8ed75";
"white" = "#0b0b0b";
"bodyBackground" = "#0b0b0b";
"bodyText" = "#f2de0e";
}

Add-SPOTheme -Name "Go Ravens" -Palette $themepalette -IsInverted $true


