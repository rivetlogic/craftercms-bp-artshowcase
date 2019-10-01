<#-- Converts a human-readable section name into an HTML id -->
<#macro internalNameToID name>${name?trim?replace(" ", "-")?lower_case}</#macro>