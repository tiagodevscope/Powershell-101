$apiKey = "" # Replace with your Alpha Vantage API key
$symbol = "GOOGL" # Replace with the stock symbol you want to get the price for

$url = "https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=$symbol&apikey=$apiKey"

$response = Invoke-RestMethod -Method Get -Uri $url

$price = $response."Global Quote"."05. price"
$change = $response."Global Quote"."09. change"
$changePercent = $response."Global Quote"."10. change percent"

Write-Host "Current stock price for $symbol :"
Write-Host "Price: $price"
Write-Host "Change: $change"
Write-Host "Change percent: $changePercent"
