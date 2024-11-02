# moz_prover
```shell
pool_address=moz.asia.zk.work:10010
```

## Release-notes

- moz_prover 1.0.0
  - First moz_prover version for Lumoz testnet

## Requirements
- OS Version: Ubuntu 20.04 +

- Nvidia Driver Version: 535.54.03 +

## Usage
```shell
Usage: moz_prover [OPTIONS] --mozaddress <MOZADDR> --lumozpool <MOZPOOL>

Options:
      --verbosity <VERBOSITY>      Specify the verbosity of the node [options: 0, 1, 2, 3] [default: 0]
      --custom_name <CUSTOM_NAME>  Specify the custom name of this worker instance [default: myprover]
  -g, --gpu_index <GPU_INDEXES>    Specify gpu index to solve puzzle, all gpus are used by default, eg. -g 0 -g 1 -g 2 ...
      --mozaddress <MOZADDR>       Specify Lumoz address to mine with
      --lumozpool <LUMOZ_POOLS>    Specify the Lumoz pool address that the worker is contributing to
  -h, --help                       Print help
  -V, --version                    Print version
```

## Mining Tutorial

Oneline command to start:
`./moz_prover --lumozpool moz.asia.zk.work:10010 --mozaddress 0xxxx --custom_name myprover`

### On Ubuntu

1. Get an Lumoz wallet address.
2. Download zkwork Nvidia miner: `wget https://github.com/6block/zkwork_moz_prover/releases/download/v1.0.0/moz_prover_cuda.tar.gz`.
3. Download zkwork AMD miner: `wget https://github.com/6block/zkwork_moz_prover/releases/download/v1.0.0/moz_prover_ocl.tar.gz`.
4. On Nvidia: `tar -zvxf moz_prover_cuda.tar.gz && cd moz_prover`, on AMD: `tar -zvxf moz_prover_ocl.tar.gz && cd moz_prover`.
5. Update your Lumoz address in `inner_prover.sh` and set custom name for mining server.
6. Start mining with `sudo chmod +x run_prover.sh && ./run_prover.sh`.
7. Check mining log with `tail -f prover.log`.

