#!/usr/bin/bash

if [ -z "$1" ]; then
  echo "Error: No input file provided." >&2
  echo "Usage: $0 <input_file>" >&2
  exit 1
fi

input_file="$1"

if [ ! -f "$input_file" ]; then
  echo "Error: File '$input_file' does not exist." >&2
  exit 1
fi

if [ ! -s "$input_file" ]; then
  echo "Error: File '$input_file' is empty." >&2
  exit 1
fi

output_file="lykkehjulet.tape"

cat <<EOL >$output_file
Output lykkehjulet.gif
Require gum

Set Height 700

Type "lykkehjulet"
Enter
Sleep 2s
EOL

while IFS= read -r var; do
  cat <<EOL >>$output_file

Type "
$var
"
Ctrl+J

EOL
done <"$input_file"

cat <<EOL >>$output_file
Sleep 1s
Enter

Sleep 2s
Enter

Sleep 14s
Escape
EOL

echo "Tape generated successfully!"
