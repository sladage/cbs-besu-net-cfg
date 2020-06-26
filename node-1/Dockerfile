FROM hyperledger/besu

COPY data /data
COPY genesis.json /

ENTRYPOINT [ "besu", "--data-path=/data", "--genesis-file=/genesis.json", "--rpc-http-enabled", "--rpc-http-api=ETH,NET,IBFT", "--host-whitelist=*", "--rpc-http-cors-origins=all", "--min-gas-price=0" ]

EXPOSE 8545
EXPOSE 8546
EXPOSE 30303/udp