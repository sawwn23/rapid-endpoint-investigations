﻿# Must use PowerShell 7.x to avoid long path/filename output issues
# Change the three variables below to match your file/folder paths
$casename = 'snwlab'
$compressed_triage_data = "C:\w\RapidIR\$casename\triage_data"
$unzipped_triage_data = "C:\w\RapidIR\$casename\triage_data"

(get-childitem -path $compressed_triage_data -filter *.zip).basename | ForEach-Object {
    
    Expand-Archive -path $compressed_triage_data\$_.zip -DestinationPath $unzipped_triage_data\$_ -Force
}