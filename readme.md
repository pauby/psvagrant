##posh-git-vagrant-status

A set of PowerShell scripts which provide Git/PowerShell integration and provide the basic status of the vagrant machines in the current directory. This is a merge of the [posh-git](https://github.com/dahlbyk/posh-git) and [vagrant-status](https://github.com/n00bworks/vagrant-status) repositories

### Prompt for Git repositories and Vagrant status
   The prompt within Git repositories can show the current branch and the state of files (additions, modifications, deletions) within.

### Prompt for Vagrant folders
   The prompt is defined in the profile.base.ps1 which will output a working directory as well as a basic vagrant status indicator.

   If there is an active Vagrant machine(s) you will see [^] the ^ is colorized in green. If there is a vagrantfile and/or folder but no Vagrant machine(s) active you will see [-].

### Tab completion
   Provides tab completion for common commands when using git.  
   E.g. `git ch<tab>` --> `git checkout`

Usage
-----

See `profile.example.ps1` as to how you can integrate the tab completion and/or git prompt into your own profile.
Prompt formatting, among other things, can be customized using `$GitPromptSettings`, `$GitTabSettings` and `$TortoiseGitSettings`.

Note on performance: displaying file status in the git prompt for a very large repo can be prohibitively slow. Rather than turn off file status entirely, you can disable it on a repo-by-repo basis by adding individual repository paths to $GitPromptSettings.RepositoriesInWhichToDisableFileStatus.

The Vagrant portion of this prompt was originally powered by Vagrant's "Vagrant Status" command however this has proven to be quite slow for use on a prompt. ~4-10 second rendering time between prompt display is a bit much. So for the time being that code has been left in but not used. If you want to try it out feel free to change "Write-VagrantStatus" to "Write-VagrantStatusVS" in profile.base.ps1

### Installing

0. Verify you have PowerShell 2.0 or better with $PSVersionTable.PSVersion

1. Verify execution of scripts is allowed with `Get-ExecutionPolicy` (should be `RemoteSigned` or `Unrestricted`). If scripts are not enabled, run PowerShell as Administrator and call `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Confirm`.

2. Verify that `git` can be run from PowerShell.
   If the command is not found, you will need to add a git alias or add `%ProgramFiles(x86)%\Git\cmd`
   (or `%ProgramFiles%\Git\cmd` if you're still on 32-bit) to your PATH environment variable.

3. Clone the posh-git-vagrant-status repository to your local machine.

4. From the posh-git-vagrant-status repository directory, run `.\install.ps1`.

5. Enjoy!


### Contributing

 1. Fork it
 2. Create your feature branch (git checkout -b my-new-feature)
 3. Commit your changes (git commit -am 'Add some feature')
 4. Push to the branch (git push origin my-new-feature)
 5. Create a new Pull Request
