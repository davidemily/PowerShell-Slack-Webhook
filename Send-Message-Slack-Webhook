Param(
	[string]$Channel,
	[string]$Username,
	[string]$Message,
	[string]$Webhook
)

$payload = @{
 "channel" = $Channel
  "text" = $Message
  "username"= $Username
}
 
Invoke-WebRequest -UseBasicParsing `
 -Body (ConvertTo-Json -Compress -InputObject $payload) `
 -Method Post `
 -Uri $Webhook
