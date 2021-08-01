#!/bin/bash
source config
IFS=$'\n'
DB='/Volumes/Kindle/system/vocabulary/vocab.db'
OUT='output.txt'
endpoint='https://api-free.deepl.com/v2/translate'
source_lang='en'
target_lang='it'


for word in $(cat extract.sql | sqlite3 $DB -separator $'\t'); do
    json=$(curl -s -L "$endpoint" -d auth_key="$key" -d text="$word" -d source_lang="$source_lang" -d target_lang="$target_lang")
    translated=$(echo "$json" | sed -E 's/.*"text":"?([^,"]*)"?.*/\1/')
    echo "$word;$translated" >> $OUT
done

echo "Export completed"
