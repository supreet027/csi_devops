param (
    [string]$webAppName,
    [string]$resourceGroupName,
    [string]$subscriptionId
)

# Install necessary modules
Install-Module -Name Az -Force -Scope CurrentUser

# Login to Azure
Connect-AzAccount

# Select subscription
Select-AzSubscription -SubscriptionId $subscriptionId

# Deploy the web app
Publish-AzWebApp -ResourceGroupName $resourceGroupName -Name $webAppName -ArchivePath "path/to/your/package.zip"
