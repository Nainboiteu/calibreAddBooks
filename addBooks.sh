#!/usr/bin/bash
set -e
echo ''
echo ''
cat << "EOF"

    _      _    _ _             ___           _         _          ___      _ _ _            
   /_\  __| |__| (_)_ _  __ _  | _ ) ___  ___| |__ ___ | |_ ___   / __|__ _| (_) |__ _ _ ___ 
  / _ \/ _` / _` | | ' \/ _` | | _ \/ _ \/ _ \ / /(_-< |  _/ _ \ | (__/ _` | | | '_ \ '_/ -_)
 /_/ \_\__,_\__,_|_|_||_\__, | |___/\___/\___/_\_\/__/  \__\___/  \___\__,_|_|_|_.__/_| \___|
                        |___/                                                                
                        
                        
EOF
echo ''
echo '                         The script will stop if any error occurs'
echo '                         -----------------------------------------'
# Set the source directory where the books are located
source_dir="/books_to_add"

# Set the target library directory
library_dir="/calibreLibrary"

# Find all files in the source directory and its subdirectories
find "$source_dir" -type f -print0 | while IFS= read -r -d '' file; do
  # Run calibredb add for each file found
  output=$(calibredb add "$file" --with-library "$library_dir")

  # Check if the output contains "Added book ids"
  if echo "$output" | grep -q "^Added book ids"; then
    # If "Added book ids" is found, remove the file
    rm "$file"
    echo "File $file was added and therefore deleted from the books_to_add folder"
  fi
done
echo ''
echo '                         -----------------------------------------'
echo '                                                                  '