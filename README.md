# Ruby Auto End Plugin

This Neovim plugin automatically inserts end after writing def, class, module, or do in Ruby files. The cursor is positioned correctly for writing the method, class, or block body.

## ✨ Features

Detects def, class, module, and do statements.

Inserts an indented end after pressing <CR>.
Moves the cursor to the correct indentation level inside the block.

Supports Vim's indentation settings (spaces or tabs).

## 📦 Installation

### Using [Lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
  "pvfm/ruby_auto_end.nvim",
}
```

### Using [Packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
use({
  "pvfm/ruby_auto_end.nvim",
})
```

## 🚀 Usage

The plugin automatically works for Ruby files. When you type `def`, `class`, `module`, or `do` and press `<CR>`, it will:

1. Insert an empty indented line.
2. Insert `end` properly indented.
3. Position the cursor inside the block.


## 📝 Example

### Before pressing `<CR>`:

```ruby
def my_method
```

```ruby
class my_class
```

### After pressing `<CR>`:

```ruby
def my_method
  # Cursor is here, ready to type
end
```

```ruby
class my_class
  # Cursor is here, ready to type
end
```

## 📜 License

This plugin is open-source and licensed under the MIT License.

## 🤝 Contributing

Feel free to submit issues or pull requests!

