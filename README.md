<img src='totsuka-logo.png'>

![image](https://github.com/tsukki9696/totsuka/assets/127806743/ca87fe8c-8278-410f-b109-ae9bd5d9c34a)

Opinionated, no-bullshit, personal Neovim config made for my needs, but should be usable for other people as well. Totsuka exists because I am tired of over-complex frameworks, and for my final and best attempt at configuring Neovim. Totsuka is focused on the base Vim experience, efficiency, simplicity and modularity, with as minimal plugins as possible, you are encouraged to remove and add as needed.

# Plugins

Totsuka comes with **only 16 plugins!** Most of these are extremely important **(LSP, Telescope, Packer)** so at this state, you simply cannot bring the count down without suffering from some lack of features, consider this as a great starting point for your own config, modularity is off the charts!

#### Dependencies

- `ripgrep`
- `packer`
- [`python-black-git`](https://github.com/psf/black) (optional)

# Keybinds

Totsuka does not come with `which-key` by default, so here's a rundown of the keybinds.

#### Standard Vim
| Keybind      | Description                              |
|--------------|------------------------------------------|
| `<leader>e`  | Toggle Netrw                             |
| `<leader>w`  | `:w`                                     |
| `<leader>q`  | `:q`                                     |
| `<leader>h`  | Beginning of line                       |
| `<leader>l`  | End of line                             |
| `<leader>hh` | Clear highlight                         |
| `<leader>so` | Source config                           |
| `<leader>x`  | `chmod +x` current file                  |
| `<C-P>`  | Improved Paste                          |
| `J`          | Improved Shift J                        |
| (Visual Mode) `K` | Move visual block up                |
| (Visual Mode) `J` | Move visual block down              |
| `<C-d>`      | Jump down but maintain cursor in the middle |
| `<C-u>`      | Jump up but maintain cursor in the middle   |
| `<C-h>`, `<C-l>`      | Navigate horizontally between splits |
| `<C-j>` `<C-k>`     | Navigate vertically between splits |

#### LSP
| Keybind     | Description                          |
|-------------|--------------------------------------|
| `<leader>fm` | Format file using Black             |
| `<C-k>`     | Select previous item                |
| `<C-j>`     | Select next item                    |
| `<C-y>`     | Confirm item                        |
| `gd`        | View definition                     |
| `K`         | Hover definition                    |
| `[d`        | Next LSP buffer                     |
| `]d`        | Prev LSP buffer                     |
| `<leader>vca` | Code actions                       |
| `<leader>vrr` | LSP references                      |
| `<leader>vrn` | Rename                             |

#### Git
| Keybind     | Description                          |
|-------------|--------------------------------------|
| `<leader>gs` | Opens fugitive                      |
| `<leader>P`  | Pull with Rebase                    |
| `<leader>p`  | Push                                |
| `<leader>t`  | Push setting the branch             |

#### Harpoon
| Keybind     | Description                          |
|-------------|--------------------------------------|
| `<leader>a`  | Mark current file                   |
| `<C-e>`     | Toggle mark menu                    |
| `<leader>1-4` | Jump to respective mark             |

#### Telescope
| Keybind     | Description                          |
|-------------|--------------------------------------|
| `<leader>pf` | Fuzzy find files                    |
| `<leader>ps` | Grep from files                     |
| `<leader>pg` | Fuzzy find git files                |
| `<leader>vh` | View Help tags                      |

#### Undotree
| Keybind     | Description                          |
|-------------|--------------------------------------|
| `<leader>u`  | Toggle Undotree                     |

---

### Credits

- [ThePrimeagen's video on configuring Neovim from zero](https://youtu.be/w7i4amO_zaE?si=Ue2c65nEUcyl8O3p)
- [drainpixie's nvim dotfiles](https://github.com/drainpixie/petal/tree/main/.config/nvim)
- [dharmx's nvim dotfiles, ](https://github.com/dharmx-lua/nvim/tree/8790250f559998f4121e3eeea00caadbb7a05cf5) ![and his script for colorschemes](https://0x0.st/HLsi.lua)
- [Dreams of Code's video on Neovim for Python development](https://www.youtube.com/watch?v=4BnVeOUeZxc&t=414s)
- [Oxocarbon colorscheme made by Nyoom](https://github.com/nyoom-engineering/oxocarbon.nvim)
