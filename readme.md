# PSVagrant

A PowerShell module which provides the status of the vagrant machines in the current directory.

> This is a fork of https://github.com/muteldar/posh-git-vagrant-status with the Posh-Git parts removed. However I have kept the Posh-Git license as used in the original. 

## Prompt for Vagrant folders

Add `Write-VagrantStatusSimple` or `Write-VagrantStatusDetailed` to your prompt function to get the output as shown below.

### Detailed

A basic example layout of this status is [D:0 R:1].

The D(own) or 'poweroff/aborted in vagrant status' collects the number of machines for the current directory (vagrant environment) that are in that state. This will be colored in gray.

The R(unning) or 'running in vagrant status' collects the number of machines for the current directory (vagrant environment) that are in that state. This will be colored in green

If there is a vagrantfile but no (D)own or (R)unning aka 'not created in vagrant status' machines you will see [-] in grey. This is to convey that there is a dormant vagrant environment in the current directory.

### Simple

If there is an active Vagrant machine(s) you will see [^] the ^ is colorized in green. If there is a vagrantfile and/or folder but no Vagrant machine(s) active you will see [-].

## Installing

### Clone this repository

Clone this repository and put into a folder on the PSModulePath.

### PowerShell Gallery

Install from the PowerShell Gallery:

```
Install-Module -Name PSVagrant
```

## TODO

- [ ] Add configuration of what is displayed just like in Posh-Git;
- [ ] Reformat code, add help and comments;
- [ ] Create Pester tests;

## Contributing

Pull requests are very welcome.

 1. Fork it
 2. Create your feature branch (git checkout -b my-new-feature)
 3. Commit your changes (git commit -am 'Add some feature')
 4. Push to the branch (git push origin my-new-feature)
 5. Create a new Pull Request