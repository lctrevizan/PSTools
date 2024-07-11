# Check if FFmpeg is installed
if (!(Get-Command ffmpeg -ErrorAction SilentlyContinue)) {
    Write-Error "FFmpeg is not installed or not in the system PATH. Please install FFmpeg and make sure it's accessible from the command line."
    exit 1
}

# Get all FLAC files in the current directory
$flacFiles = Get-ChildItem -Filter *.flac

# Check if any FLAC files were found
if ($flacFiles.Count -eq 0) {
    Write-Host "No FLAC files found in the current directory."
    exit 0
}

# Convert each FLAC file to MP3 V0 and delete the original FLAC if successful
foreach ($file in $flacFiles) {
    $outputFile = [System.IO.Path]::ChangeExtension($file.FullName, "mp3")
    Write-Host "Converting $($file.Name) to MP3..."
    ffmpeg -i $file.FullName -c:a libmp3lame -q:a 0 $outputFile
    
    if (Test-Path $outputFile) {
        Remove-Item $file.FullName
        Write-Host "Deleted original FLAC file: $($file.Name)"
    } else {
        Write-Warning "Conversion failed for $($file.Name). FLAC file not deleted."
    }
}

Write-Host "Conversion complete. All FLAC files have been converted to MP3 V0 and original FLAC files deleted if successful."