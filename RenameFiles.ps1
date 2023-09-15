# Navigate to the directory containing the JPG files
#cd "D:\Users\darren\Documents\VRChatProjects\Data\Africa 2023 Photos for Gallery\github-photos\Africa2023\Day6"

# Loop through each JPG file in the directory
Get-ChildItem -Name | Where-Object { $_ -match 'Photos \(\d+.*\)\.[jJ][pP][gG]' } | ForEach-Object {
    # Extract the number from the file name, case-insensitive
    if ($_ -match 'Photos \((\d+).*\)\.[jJ][pP][gG]') {
        $number = $matches[1]
        
        # Add a leading zero if the number is a single digit
        if ($number.Length -eq 1) {
            $number = "0$number"
        }
        
        # Construct the new file name
        $newName = "Photos$number.jpg"
        
        # Rename the file
        Rename-Item $_ -NewName $newName
    }
}

Write-Host "Script completed."
