#!/bin/bash

# 1. Mensaje simple desde variable de entorno
if [ -n "$MESSAGE" ]; then
    /usr/games/cowsay $FLAGS "$MESSAGE"
    exit 0
fi

# 2. Mensajes desde archivo
if [ -n "$MESSAGE_FILE" ]; then
    WAIT_TIME=${WAIT_TIME:-1}   # valor por defecto = 1 segundo
    while IFS= read -r line; do
        /usr/games/cowsay $FLAGS "$line"
        sleep "$WAIT_TIME"
    done < "$MESSAGE_FILE"
    exit 0
fi

echo "No MESSAGE or MESSAGE_FILE provided"
exit 1
