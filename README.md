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
* :CocInstall coc-go coc-html coc-json coc-markdownlint coc-pyright coc-sh coc-solargraph coc-vimlsp coc-yaml
* ~/.config/nvim/coc-settings.json

```json
{
  "npm.binPath": "~/.nvm/versions/node/v18.16.0/bin/yarn",
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
