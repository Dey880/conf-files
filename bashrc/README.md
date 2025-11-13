# Custom .bashrc Configuration

A personalized `.bashrc` script with quality-of-life improvements, styling, and useful aliases to enhance your Bash shell experience with focus on git.

---

## Features

- Improved history management and command completion
- Colorful and informative prompt showing user, host, path, Git branch, and Python virtual environment
- Handy aliases for everyday commands (e.g., `please` for `sudo`, `gs` for `git status`)
- Safety features like interactive `rm`, `cp`, and `mv`
- Automatic command suggestions with [thefuck](https://github.com/nvbn/thefuck) integration (if installed)
- Support for `fastfetch` or `neofetch` on terminal start
- Colored `ls` output and enhanced man page appearance
- Auto-correct command suggestions and autocompletion with arrow keys
- Environment variables configured for better terminal usability

---

## Installation

1. Backup your existing `.bashrc`:

   ```bash
   cp ~/.bashrc ~/.bashrc.backup
   ```

2. Replace your `.bashrc` with this custom configuration:

   ```bash
   curl -o ~/.bashrc https://raw.githubusercontent.com/Dey880/conf-files/refs/heads/main/bashrc/.bashrc
   ```

   *(Or copy-paste the content manually)*

3. Reload your shell:

   ```bash
   source ~/.bashrc
   ```

---

## Usage

- Navigate directories quickly with `..` and `...`
- Run `update` to upgrade your system packages
- Enjoy automatic Git branch display and virtual environment indication in your prompt
- Type commands with confidence using history search (`Up` arrow) and auto-correction suggestions

---

## Custom Functions

- `parse_git_branch`: Displays the current Git branch in the prompt
- `parse_venv`: Shows active Python virtual environment in the prompt

---

## Notes

- Requires `dircolors` and optionally `thefuck`, `fastfetch`, or `neofetch`
- Tested on Debian-based system (Ubuntu 22 Jammy); some features may require adjustments for other distributions
- Feel free to customize aliases and prompt styles to your preference

---

## License

This `.bashrc` configuration is open for personal use and modification. No warranties provided.

---

*Enjoy your enhanced Bash shell!*
