# Solidity Audit  Docker Toolkit

A collection of tools built with docker with 1 source directory for auditing..

This creates a drag and drop audit environment for security auditors with outputs from all tools in 1 location.

#  Connect

` docker exec -it <container>  `


# Add Foundry support

## Install foundry

`curl -L https://foundry.paradigm.xyz | bash` 

Then run this command to install Foundry:

`foundryup`


1. Create a sample Foundry project on your PC. To initiate a new project 
   
run the following command:

`forge init your_project`

2. Copy the `lib/forge-std` folder and the file `foundry.toml` from this sample project to `auditFiles/<project>` directory.

3. edit the foundry.toml like so:

```bash
[profile.default]
src = 'contracts'
out = 'out'
libs = ['node_modules', 'lib']
test = 'test/foundry'
cache_path = 'forge-cache'

```

4. Create `remappings.txt` and add:

```
ds-test/=lib/forge-std/lib/ds-test/src/
forge-std/=lib/forge-std/src/

```