* curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
* nvm install --lts=fermium
* nvm use lts/fermium
* gem install solargraph
* git clone https://github.com/juliosueiras/terraform-lsp
    * GO111MODULE=on go mod download
    * make
    * make copy DST=$GOPATH/bin
* :PackSync
* :GoInstallBinaries
* :CocInstall coc-json coc-go coc-solargraph
* ~/.config/nvim/coc-settings.json
```json
{
  "npm.binPath": "~/.nvm/versions/node/v14.21.3/bin/yarn",
  "languageserver": {
    "go": {
      "command": "gopls",
      "rootPatterns": ["go.mod"],
      "trace.server": "verbose",
      "filetypes": ["go"]
    }
  }
}
```
