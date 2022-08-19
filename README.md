Use `git-branch` to manage git branches on interactive mode.

## Pre-requisites

1. [Install `bash-builder`](https://gitlab.com/taikedz/bash-builder#installing)

## Usage

1. Clone this repository:

   ```bash
   git clone https://github.com/quibaritaenperdresatrompe/git-branch
   cd git-branch
   ```

2. Build `git-branch` binary cf. [build section](#build)

3. Install `git-branch` binary:

   ```bash
   sudo install -m 755 -o root -g bin bin/git-branch /usr/bin/git-branch
   ```

4. Run `git-branch`

   ![example](/docs/usage.gif)

## Development

### Build

Use `bbuild` to generate a binary output:

```bash
bbuild src/index.sh bin/git-branch
```

### Run

Use `bbrun` command to run locally the script:

```bash
bbrun src/index.sh
```
