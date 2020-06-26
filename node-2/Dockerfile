FROM hyperledger/besu

COPY data /data
COPY genesis.json /

# enode://857348592a4d88640d86ee1b1c13b9eb870ef176e6a75b36d220a790cc8e2d78d0673ac90cc1714307d69294069a4c1cf5bb8947d61f32af1544c08e3b5fa919@127.0.0.1:30303

ENTRYPOINT [ "besu", "--data-path=/data", "--genesis-file=/genesis.json", "--bootnodes=enode://857348592a4d88640d86ee1b1c13b9eb870ef176e6a75b36d220a790cc8e2d78d0673ac90cc1714307d69294069a4c1cf5bb8947d61f32af1544c08e3b5fa919@1.2.3.4:30303", "--rpc-http-enabled", "--rpc-http-api=ETH,NET,IBFT", "--host-whitelist=\"*\"", "--rpc-http-cors-origins=\"all\"", "--min-gas-price=0" ]