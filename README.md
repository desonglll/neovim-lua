---
title: README
date: 2022/12/08/ 00:22:51
discription: 
---

## Table Of Contents

- [Table Of Contents](#table-of-contents)
- [**Github** repository link](#github-repository-link)
- [Steps to go](#steps-to-go)
  - [:star:Clone this repository](#starclone-this-repository)
  - [:star:Install Packer](#starinstall-packer)
  - [:star:Install lazygit](#starinstall-lazygit)
  - [:star:Install LSP configuration](#starinstall-lsp-configuration)
    - [Python](#python)
    - [Clangd](#clangd)
    - [Jdtls](#jdtls)
  - [:star:Config](#starconfig)
- [Plugins](#plugins)
  - [p-vsnip](#p-vsnip)
  - [:star:Markdown Preview Enhanced](#starmarkdown-preview-enhanced)
  - [nvim-surround(YSW)](#nvim-surroundysw)
  - [:star:Preitter](#starpreitter)

## **Github** repository link

:star:This is link: [`https://github.com/desonglll/neovim-lua`](https://github.com/desonglll/neovim-lua)

> Every :star: marked is necessary for installations.
>
> Make sure everything be installed!!!

## Steps to go

### :star:Clone this repository

`git clone git@github.com:desonglll/neovim-lua.git ~/.config/nvim`

### :star:Install Packer

`git clone --depth 1 git@github.com:wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

### :star:Install lazygit

`brew install lazygit`

### :star:Install LSP configuration

#### Python

Install Python language server

`npm i -g pyright`

In `./lua/lsp-config.lua`

```lua
require'lspconfig'.pyright.setup{}
```

#### Clangd

[Installation for Clangd](https://clangd.llvm.org/installation.html)

In `./lua/lsp-config.lua`

```lua
require'lspconfig'.clangd.setup{}
```

#### Jdtls

```lua
-- Official download page: http://download.eclipse.org/jdtls/snapshots/?d
require('lspconfig')['jdtls'].setup{
    on_attach = on_attach,
    cmd = {
      "jdtls",
      -- path to jdt-language-server-latest bin directory.
      '$HOME/.config/nvim/sources/jdtls/jdt-language-server-latest/bin',
      "~/.config/nvim/sources/jdtls/jdt-language-server-latest/bin",
    },
    single_file_support = true,
}
```

### :star:Config

press `nvim` and `:PackerSync` to sync.

## Plugins

### p-vsnip

This command means setting vsnip's default directory.

```lua
vim.g['vsnip_snippet_dir'] = '~/.config/nvim/.vsnip'
```

### :star:Markdown Preview Enhanced

```shell
cd ~/.local/share/nvim/site/pack/packer/start/
git clone https://github.com/iamcco/markdown-preview.nvim.git
cd markdown-preview.nvim
yarn install
yarn build
```

Using yarn to install.

### nvim-surround(YSW)

```txt
2.1. The Basics                                         *nvim-surround.basics*

The primary way of adding a new pair to the buffer is via the normal-mode *ys*
operator, which stands for "you surround". It can be used via
`ys{motion}{char}`, which surrounds a given {motion} with a delimiter pair
associated with {char}. For example, `ysa")` means "you surround around quotes
with parentheses".

In all of the following examples, the `*` denotes the cursor position:

    Old text                    Command         New text ~
    local str = H*ello          ysiw"           local str = "Hello"
    require"nvim-surroun*d"     ysa")           require("nvim-surround")
    char c = *x;                ysl'            char c = 'x';
    int a[] = *32;              yst;}           int a[] = {32};

Furthermore, there are insert-mode *<C-g>s* and visual-mode *S* mappings, that
add the delimiter pair around the cursor and visual selection, respectively.
In all of the following examples, we will use `|` to demarcate the start and
end of a visual selection:

    Old text                    Command         New text ~
    local str = *               <C-g>s"         local str = "*"
    local tab = *               <C-g>s}         local str = {*}
    local str = |some text|     S'              local str = 'some text'
    |div id="test"|</div>       S>              <div id="test"></div>

To delete a delimiter pair, use the *ds* operator, which stands for "delete
surround". It is used via `ds[char]`, deleting the surrounding pair associated
with {char}. For example, `ds)` means "delete surrounding parentheses".

    Old text                    Command         New text ~
    local x = ({ *32 })         ds)             local x = { 32 }
    See ':h h*elp'              ds'             See :h help
    local str = [[Hell*o]]      ds]             local str = [Hello]

To change a delimiter pair, use the *cs* operator, which stands for "change
surround". It is used via `cs{target}{replacement}`, changing the surrounding
pair associated with {target} to a pair associated with {replacement}. For
example, `cs'"` means "change the surrounding single quotes to double quotes".

    Old text                    Command         New text ~
    '*some string'              cs'"            "some string"
    use<*"hello">               cs>)            use("hello")
    `some text*`                cs`}            {some text}

--------------------------------------------------------------------------------
```

### :star:Preitter

```shell
cd /Users/mikeshinoda/.local/share/nvim/site/pack/packer/start/vim-prettier.git && yarn install
```

### :star:Autoformat

First, install `pynvim`.

```shell
python3 -m pip install pynvim
```


