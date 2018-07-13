# PSVagrant

A PowerShell module which provides the status of the vagrant machines on the system and the current directory.

> This is a fork of https://github.com/muteldar/posh-git-vagrant-status with the Posh-Git parts removed. However I have kept the Posh-Git license as used in the original. 

## Prompt for Vagrant folders

Add `Write-VagStatus` to your prompt function to get the output:

    `[^2 >1]`

This means that on the computer there are 2 Vagrant machines up and 1 of those machines is in the current directory.

* `^2` - this means that there are two machines up _globally_ (ie. anywhere on the device) - this case 2 vagrant machines are up globally;
* `>1` - this indicates that there is one machine up _locally_ (ie. in this current folder) - in this case there is 1 machine up locally;

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
- [ ] Add functions to simply manage Vagrant globally (so you can down machines from any directory not just where the Vagrantfile is);
- [ ] Add code to Get-LocalStatus to not have it get the global status again (if you're using it in the prompt you already have the global status so no point in getting it again);
- [ ] Look at adding other Vagrant machine states ([see for examples](https://github.com/bbenoist/vscode-vagrant));
## Contributing

Pull requests are very welcome.

 1. Fork it
 2. Create your feature branch (git checkout -b my-new-feature)
 3. Commit your changes (git commit -am 'Add some feature')
 4. Push to the branch (git push origin my-new-feature)
 5. Create a new Pull Request