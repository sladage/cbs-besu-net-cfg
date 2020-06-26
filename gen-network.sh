#!/bin/sh
rm -rf networkFiles
~/besu-1.4.0/bin/besu operator generate-blockchain-config --config-file=ibftConfigFile.json --to=networkFiles --private-key-file-name=key
i=0
for d in ./networkFiles/keys/*/; do
    ((i++))
    mkdir "node-$i/data"
    cp $d/* "node-$i/data/"
    cp ./networkFiles/genesis.json "node-$i/"
done
