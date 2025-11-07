## conf-files

This repository contains small configuration files and snippets I keep for system and editor setup. It is intentionally lightweight — just a couple of folders with single-purpose config files you can copy or adapt.

Structure
---------

- `bashrc/` — shell configuration files and notes
	- `.bashrc` — personal Bash startup file. Copy or merge snippets you like into your own shell configuration (be careful if you already have existing settings).
	- `README.md` — notes about the bashrc folder and any usage hints.

- `notes-highlight/` — lightweight config folder with highlight rules for `.notes` files
  - `settings.json` — sample settings for a small VS Code highlight ruleset (targets `*.notes` files). You can paste these into a workspace `settings.json` or adapt them for an extension.

What you'll find here
---------------------

- Small, copy-ready configuration snippets for personal use.
- No build steps — these are plain text configuration files intended to be read and copied as needed.

How to use
----------

1. Browse the folders and open the files you need (for example, open `bashrc/.bashrc` to inspect shell customizations).
2. Review any snippets before merging into your own configuration files. These files are personal and may contain assumptions specific to the original environment.
3. For the VS Code settings, you can either paste the relevant JSON into a workspace `settings.json` or use it as a starting point for a small extension.

Prerequisites
-------------

- The highlight rules require the VS Code extension "Highlight" by Fabio Spampinato (`fabiospampinato.vscode-highlight`). Install it from the Marketplace for `highlight.regexes` to take effect.
- The file association uses the Material Icon Theme by PKief (`PKief.material-icon-theme`) so icons display correctly for `*.notes` files. This is optional but recommended.


Notes and cautions
-----------------

- These files are configuration snippets, not packaged installers. Always back up your current configuration before applying changes.
- Line endings and permissions can matter when copying `.bashrc` to a non-Unix environment. Convert line endings and verify executable bits where appropriate.

---

Files included (summary)
- `bashrc/.bashrc` — Bash startup file with customizations
- `bashrc/README.md` — notes for the bashrc folder
- `notes-highlight/settings.json` — VS Code highlight settings
- `notes-highlight/README.md` — notes for the notes-highlight folder
- `notes-highlight/examples/example.notes` — example file to show the different stylings
