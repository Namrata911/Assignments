#!/bin/bash 

declare -A sounds

sounds[dog]="bark"
sounds[cow]="mm"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog Sound" ${sounds[dog]}
echo "All Animals sound " ${sounds[@]}
echo "Animal " ${!sounds[@]}
echo "Number of Animals " ${#sounds[@]}
