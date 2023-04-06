# Install

* `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash`
* `nvm install --lts=fermium`
* `nvm use lts/fermium`
* `npm install -g yarn`
* `yarn add global neovim`
* `gem install solargraph neovim`
* `pip3 neovim neovim-remote`
* Install terraform
  * https://www.hashicorp.com/official-packaging-guide
  * `apt-get install terraform terraform-ls`
* :PackSync
* :GoInstallBinaries
* :CocInstall coc-json coc-yaml coc-go coc-solargraph
* ~/.config/nvim/coc-settings.json

```json
{
  "npm.binPath": "~/.nvm/versions/node/v14.21.3/bin/yarn",
  "languageserver": {
    "terraform": {
      "command": "terraform-ls",
      "args": ["serve"],
      "filetypes": ["terraform","tf"],
      "initializationOptions": {},
      "settings": {}
    }
  }
}
```
