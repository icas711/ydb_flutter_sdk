# Fix proto imports by removing "protos/" prefix
Get-ChildItem -Path protos -Filter *.proto -Recurse | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    $newContent = $content -replace 'import "protos/', 'import "'
    Set-Content $_.FullName -Value $newContent -NoNewline
    Write-Host "Fixed imports in $($_.Name)"
}

Write-Host "`nDone! All proto files have been fixed." -ForegroundColor Green
