Param(
	[Parameter(Mandatory=$True)]
	[ValidateNotNullOrEmpty()]
	[string]$channel,
		
	[Parameter(Mandatory=$True)]
	[ValidateNotNullOrEmpty()]
	[string]$message,
	
	[Parameter(Mandatory=$True)]
	[ValidateNotNullOrEmpty()]
	[string]$webhook
)

$payload = @{
 "channel" = $channel
  "text" = $message
}
 
Invoke-WebRequest -UseBasicParsing `
 -Body (ConvertTo-Json -Compress -InputObject $payload) `
 -Method Post `
 -Uri $webhook
