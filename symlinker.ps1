# Define the paths 
$sourcePath = "**FILL IN**"
$targetPath = "**FILL IN**"

# Traverse the directory
$lmStudioFiles = Get-ChildItem -Path $sourcePath -Recurse -File

foreach ($file in $lmStudioFiles) {
    # Construct the symlink path in target directory
    $symlinkPath = Join-Path -Path $targetPath -ChildPath $file.Name

    # Create the symbolic link if it does not already exist
    if (-not (Test-Path -Path $symlinkPath)) {
        New-Item -ItemType SymbolicLink -Path $symlinkPath -Target $file.FullName
    }
}
