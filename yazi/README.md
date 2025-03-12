# Yazi - A Blazing Fast Terminal File Manager (Config)

[Yazi](https://yazi-rs.github.io/docs/installation) is a **highly customizable** and **blazingly fast** terminal file manager written in Rust. It provides extensive customization options, efficient navigation, and plugin support, making it a powerful choice for terminal users.

> **Note:** This configuration was committed using **Yazi version: 25.2.11**.

---

## Screenshot
<p align="center">
  <img src="https://github.com/user-attachments/assets/32df55ae-39b3-4c8b-9816-1dacaf161b08"/>
</p>
<!-- [![Screenshot](https://github.com/user-attachments/assets/32df55ae-39b3-4c8b-9816-1dacaf161b08)](https://github.com/user-attachments/assets/32df55ae-39b3-4c8b-9816-1dacaf161b08) -->

---

## Repository Structure
This repository contains essential Yazi configuration files:

- **`init.lua`** - The main Lua configuration file for Yazi. It uses `dofile()` to keep the configuration clean and modular by loading separate Lua files for different settings.
- **`keymap.toml`** - Defines custom keybindings for enhanced navigation and workflow.
- **`package.toml`** - Specifies plugins to enhance Yazi’s functionality.
- **`theme.toml`** - Customizes Yazi’s appearance and color scheme.
- **`yazi.toml`** - The main configuration file that controls Yazi’s behavior.

For a detailed guide on Yazi’s configuration, refer to the **[Yazi Configuration Guide](https://yazi-rs.github.io/docs/configuration/overview)**.

---

## Getting Started
To set up Yazi with this configuration, follow these steps:

1. **Install Yazi**
   - Follow the official [installation guide](https://yazi-rs.github.io/docs/installation) to install Yazi on your system. Do not forget to follow original instructions of Shell Wrapper from [Quick Start](https://yazi-rs.github.io/docs/quick-start#shell-wrapper).

2. **Clone Just the Yazi Directory from the Dotfiles Repository**
   If your repository contains multiple configurations and you only want the Yazi directory, use:
   ```sh
   git clone --depth 1 --filter=blob:none --sparse https://github.com/rushyang/dotfiles.git
   cd dotfiles
   git sparse-checkout set yazi
   mv yazi ~/.config/yazi
   ```
   This ensures that only the `yazi` directory is cloned and moved into the correct location.

3. **Install Plugins from `package.toml`**
   ```sh
   ya install -i
   ```
   This will install all plugins listed in `package.toml`.

4. **(Optional) Update Plugins**
   ```sh
   ya install -u
   ```
   This updates all installed plugins to their latest versions.

5. **Launch Yazi**
   ```sh
   y
   ```
   You are now ready to use Yazi with this configuration!

---

Enjoy a **fast, customizable, and powerful** terminal file manager experience with Yazi! 🚀


