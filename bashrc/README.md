# Custom .bashrc Configuration

A lightweight and functional `.bashrc` configuration for **Ubuntu 24.04**, designed to make the Bash shell more efficient, informative, and pleasant to use, especially for users who work frequently with Git.

---

## Features

- **Clean, informative prompt**

  - Shows user, host, working directory, and active Git branch.
  - Uses color for clarity without excessive styling.

- **Quality-of-life aliases**

  - Shortcuts for navigation, system updates, Git commands, and common utilities.

- **Git-aware prompt**

  - Displays the current branch and indicates if the repository has uncommitted changes.

- **Automatic dependency detection**

  - Adapts behavior if `git`, `lsd`, `batcat`, or `fzf` are installed.

- **Enhanced history management**

  - Large, persistent command history that avoids duplicates and syncs between sessions.

- **Optional utilities integration**

  - `lsd`: improved `ls` output
  - `batcat`: colorized replacement for `cat`
  - `fzf`: fuzzy directory navigation
  - `dircolors`: ensures consistent colored output

- **Minimal welcome message**

  - Clears the screen and shows a short greeting with the current date for interactive shells.

---

## Installation

1. Backup your existing `.bashrc`:

   ```bash
   cp ~/.bashrc ~/.bashrc.backup
   ```

2. Replace it with the new configuration (example using `curl`):

   ```bash
   curl -o ~/.bashrc https://raw.githubusercontent.com/Dey880/conf-files/refs/heads/main/bashrc/.bashrc
   ```

   *(Or copy and paste the provided **``** content manually.)*

3. Reload your shell:

   ```bash
   source ~/.bashrc
   ```

---

## Usage

- `..`, `...`, `....` — Move up directory levels quickly.
- `update` — Update and upgrade system packages (`sudo apt update && sudo apt upgrade -y`).
- Git shortcuts:
  - `gs` → `git status`
  - `ga` → `git add`
  - `gc` → `git commit -m`
  - `gp` → `git push`
  - `gl` → one-line decorated Git log
- `extract <file>` — Unpack various archive formats.
- If `fzf` is installed: `fd` — fuzzy directory jump.

---

## Custom Functions

- **`parse_git_branch`**
  - Shows the active Git branch and marks the working tree as dirty when there are uncommitted changes.

- **`extract`**
  - Detects and extracts common archive types (`.zip`, `.tar.gz`, `.7z`, etc.).

- **`fd`** *(optional, requires `fzf`)*
  - Fuzzy directory navigation helper.

---

## Dependencies

| Dependency  | Purpose                                  | Required                      |
| ----------- | ---------------------------------------- | ----------------------------- |
| `git`       | Git branch display and aliases           | Yes                           |
| `lsd`       | Improved directory listings              | Optional                      |
| `batcat`    | Colored file viewing (`cat` replacement) | Optional                      |
| `fzf`       | Interactive fuzzy directory navigation   | Optional                      |
| `dircolors` | Color support for `ls`                   | Optional (commonly available) |

---

## Notes

- Built and tested on **Ubuntu 24.04 LTS**.
- Works on most Debian-based systems with Bash 5+.
- The welcome message only appears for interactive shells.
- Safe to reload with the `reload` alias.

---

## License

This configuration is provided for personal use and modification. No warranty or official support is provided.

---

Enjoy a cleaner, more useful Bash prompt.

