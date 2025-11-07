# notes-highlight

This folder contains a small VS Code settings snippet that provides highlight/regex decorations intended for `.notes` files.

Basics
- The provided `settings.json` contains rules under `highlight.regexes` and uses `filterFileRegex` set to `\.notes$`. That means these decorations will only apply to files whose name ends with `.notes`.
- The file also contains an association to treat `*.notes` as `yaml` for icon/theme compatibility.

How to use
- Copy the contents of `settings.json` into a workspace or user `settings.json` (for example, `.vscode/settings.json` in a workspace) to enable the highlights for your notes files.
- You can also use the file as a starting point if you build a small VS Code extension that registers highlight rules.

Customization
- Change colors and `decorations` to suit your theme.
- Modify or add regexes inside `highlight.regexes` to target other patterns. Remove or edit `filterFileRegex` if you want the rules to apply to other file types.

Notes
- This is a snippet — review it before applying to avoid conflicts with existing settings.
- If you want the rules to apply to a different extension (for example `.txt`), change `filterFileRegex` accordingly.