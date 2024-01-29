# Symbolic Link Creation Script for Model Files

This PowerShell script is designed to facilitate the sharing of large machine learning models (such as `.gguf` files) between different software environments without duplicating the files, saving significant disk space. It's particularly useful when working with models from different sources like Oogabooga and LM Studio, which have different directory structures.

## Overview

The script traverses a specified source directory (containing the model files) and creates symbolic links (symlinks) in the target directory. This approach allows another software environment to access and utilize these models as if they were located in its own directory structure.

## Prerequisites

- Windows Operating System.
- PowerShell (with administrative privileges for creating symlinks).

## Usage

1. **Fill in the Paths:**
   - Open the script in a text editor.
   - Replace `**FILL IN**` with the appropriate paths:
     - `$sourcePath` - The directory containing the actual model files. (eg. C:\Users\johndoe\.cache\lm-studio\models)
     - `$targetPath` - The directory where symbolic links will be created. (eg. C:\Users\johndoe\oobabooga\text-generation-webui\models)
   - Save the updated script

2. **Run the Script:**
   - Open PowerShell as an administrator.
   - Navigate to the directory containing the script.
   - Execute the script by typing `.\[ScriptName].ps1`, replacing `[ScriptName]` with the name of your script file.

3. **Check the Target Directory:**
   - Navigate to the target directory.
   - Verify that symbolic links have been created for each model file from the source directory.

## Notes

- The script does not move or duplicate the original files, but creates pointers to them.
- Changes made to the files via the symlinks are reflected in the original files.
- If the original files are moved or renamed, the symlinks will need to be updated.

## Troubleshooting

- **Permission Denied Error:** Ensure PowerShell is run as an administrator.
- **Symlink Not Working:** Check if the paths in the script are correctly specified and that the original files have not been moved.
