$env:PATH += ";$PWD\protoc_compiler\bin"
$protoc_dart = "$env:LOCALAPPDATA\Pub\Cache\bin\protoc-gen-dart.bat"

$proto_files = @(
    "ydb_table.proto",
    "ydb_query.proto",
    "ydb_value.proto",
    "ydb_common.proto",
    "ydb_operation.proto",
    "ydb_status_codes.proto",
    "ydb_issue_message.proto",
    "ydb_query_stats.proto",
    "ydb_scheme.proto",
    "ydb_topic.proto",
    "ydb_formats.proto",
    "annotations/validation.proto",
    "annotations/sensitive.proto"
)

foreach ($file in $proto_files) {
    $proto_path = "protos/$file"
    Write-Host "Generating $file..."
    .\protoc_compiler\bin\protoc.exe `
        --dart_out=grpc:lib/src/generated `
        --plugin=protoc-gen-dart=$protoc_dart `
        -I protos `
        --proto_path=protoc_compiler/include `
        $proto_path
    
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Failed to generate $file" -ForegroundColor Red
    }
}

Write-Host "Done!" -ForegroundColor Green
