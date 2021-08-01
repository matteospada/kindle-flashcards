# Kindle Flashcards

## What is it

Kindle Flash card is a terminal utility that permit to export all words in english included in the kindle dictionary and automatically translate each words for future import in [Anki](https://apps.ankiweb.net/).

The project use Deepl API, so you need to create your apikey for use it. Can you create your API Key [here](https://www.deepl.com/pro-checkout/account?productId=1200&yearly=false&trial=false), it's free.

Project based on: [kindle-flashcards](https://github.com/katspaugh/kindle-flashcards)

## How use it

 1. Plug Kindle into the computer.
 2. Open the terminal.
 3. Download this repository and navigate to its folder: `cd ./kindle-flashcards`.
 4. create a new file named `config` with the following command, edit the command with you deepl api key.
    ```
    echo "key='your-deepl-apikey'" > config
    ```
 5. Execute the command `chmod 700 export.sh`
 6. Execute `./export`. This will create the file output.txt, with all english words present in kindle's dictionary.


## Importing into Anki
 Import the output.txt file (File -> Import).
