# Visual Studio Code ❤️

Here’s a `README.md` file template for your personal Visual Studio Code settings, which includes descriptions for your extensions and configurations:

# Personal Visual Studio Code Settings

This repository contains my personal Visual Studio Code (VS Code) settings and extensions. The following settings and extensions help optimize my workflow as a web developer, especially when working with PHP, JavaScript, HTML, CSS, SCSS, and Laravel projects.

## Install Extensions

To install all recommended extensions, you can use the provided `install_extensions.sh` script. Run the following command in your terminal:

```bash
bash install_extensions.sh
```

This script will install all the extensions that I use for web development, theme customization, and productivity enhancement.

If you want to make sure that all extensions are installed properly, you can use the following command:

```bash
code --list-extensions
```

This command will list all your installed extensions. This will allow you to check whether the extensions you need are installed correctly.

### The list might look something like this

- aaron-bond.better-comments
- bmewburn.vscode-intelephense-client
- christian-kohler.path-intellisense
- dbaeumer.vscode-eslint
- damms005.devdb

Your installed extensions will be shown in the list and you can compare if any extensions are missing.

### Manual Installation

You can manually install each extension by searching for its name in the Extensions view in VS Code.

## Settings Overview

Here’s a breakdown of my **VS Code settings**:

### File Management Settings

- **`files.autoSave`**: Automatically saves files after a brief delay.
- **`files.encoding`**: Sets file encoding to UTF-8.
- **`files.trimTrailingWhitespace`**: Trims unnecessary spaces at the end of lines on save.
- **`files.insertFinalNewline`**: Ensures files end with a newline.

### Font Customization Settings

- **`editor.fontFamily`**: Uses `JetBrains Mono` for coding, providing a programmer-friendly typeface.
- **`editor.fontSize`**: Sets the font size to 15 for readability.
- **`editor.fontWeight`**: Uses medium font weight for balanced visibility.
- **`editor.fontLigatures`**: Enables font ligatures for a modern, clean look.

### Editor Appearance Settings

- **`editor.tabSize`**: Set tab size to 4 spaces, a standard for most coding projects.
- **`editor.formatOnPaste`**: Automatically formats code when pasted.
- **`editor.minimap.enabled`**: Displays a minimap for easier navigation.
- **`editor.cursorBlinking`**: Activates smooth cursor blinking.
- **`editor.cursorWidth`**: Customizes the cursor width for better visibility.
- **`editor.cursorStyle`**: Sets the cursor style to a line.
- **`editor.renderControlCharacters`**: Displays control characters, useful for debugging.
- **`editor.linkedEditing`**: Synchronizes tag editing in HTML/XML files.
- **`editor.indentSize`**: Ensures consistent indentation based on `tabSize`.
- **`editor.stickyScroll.enabled`**: Disables sticky scroll for cleaner navigation.
- **`breadcrumbs.enabled`**: Disables breadcrumbs for a more focused editor.

### Git Settings

- **`git.autofetch`**: Automatically fetches changes from remote repositories.
- **`git.confirmSync`**: Disables confirmation prompts when syncing.
- **`git.enableSmartCommit`**: Commits all staged changes automatically.
- **`git.enableCommitSigning`**: Enables commit signing for verifying authorship.
- **`git.autoRepositoryDetection`**: Detects git repositories based on open editors.

### Terminal Settings

- **`terminal.integrated.fontSize`**: Sets the terminal font size to 14.
- **`terminal.integrated.cursorBlinking`**: Enables cursor blinking in the terminal.
- **`terminal.integrated.scrollback`**: Increases terminal scrollback buffer to 10000.
- **`terminal.integrated.defaultProfile.windows`**: Sets PowerShell as the default terminal profile.

### Theme and Icon Settings

- **`workbench.colorTheme`**: Uses the **Monokai Pro (Filter Machine)** theme for a clean and colorful interface.
- **`workbench.iconTheme`**: **Material Icon Theme** is used for modern icons.
- **`workbench.statusBar.visible`**: Keeps the status bar visible for critical info.

### Advanced Performance Settings

- **`explorer.compactFolders`**: Disables compact folders in the file explorer.
- **`workbench.editor.enablePreview`**: Disables preview mode for always showing full editor tabs.
- **`workbench.editor.showTabs`**: Always displays multiple tabs for easy file navigation.
- **`workbench.editor.tabSizing`**: Shrinks tab size when multiple tabs are open.
- **`workbench.editor.labelFormat`**: Uses short labels for editor tabs.

## Extension Recommendations

Here are the extensions I use to enhance my development experience:

1. **[Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)** - Launch a local development server with live reload.
2. **[Highlight Matching Tag](https://marketplace.visualstudio.com/items?itemName=vincaslt.highlight-matching-tag)** - Highlights the matching HTML/XML tag.
3. **[Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight)** - Highlights colors in CSS/HTML files.
4. **[Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)** - Automatically closes HTML/XML tags.
5. **[Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)** - Renames paired HTML/XML tags simultaneously.
6. **[Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)** - Improves code comment readability with different comment types.
7. **[Dracula Theme Official](https://marketplace.visualstudio.com/items?itemName=dracula-theme.theme-dracula)** - Dark theme for a visually appealing environment.
8. **[ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)** - Integrates ESLint to maintain code quality in JavaScript.
9. **[PowerShell](https://marketplace.visualstudio.com/items?itemName=ms-vscode.powershell)** - PowerShell extension for managing scripts.
10. **[GitHub Codespaces](https://marketplace.visualstudio.com/items?itemName=github.codespaces)** - Work in GitHub Codespaces directly from VS Code.
11. **[Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=pkief.material-icon-theme)** - Adds Material Design icons to your VS Code workspace.
12. **[Monokai Pro](https://marketplace.visualstudio.com/items?itemName=onokai.theme-monokai-pro-vscode)** - A high-quality color theme based on Monokai.
13. **[Prettier - Code Formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)** - Code formatter for maintaining consistent style.
14. **[PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)** - PHP code intelligence and features.
15. **[Laravel Blade Snippets](https://marketplace.visualstudio.com/items?itemName=onecentlin.laravel-blade)** - Snippets for Laravel Blade templates.
16. **[EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=editorconfig.editorconfig)** - Helps maintain consistent coding styles across different editors.
17. **[DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv)** - Syntax highlighting for `.env` files in PHP/Laravel projects.
18. **[Laravel Blade Formatter](https://marketplace.visualstudio.com/items?itemName=shufo.vscode-blade-formatter)** - Automatically formats Laravel Blade templates.
19. **[DevDb](https://marketplace.visualstudio.com/items?itemName=damms005.devdb)** - Integrates database management within VS Code.
20. **[laravel-jump-controller](https://marketplace.visualstudio.com/items?itemName=pgl.laravel-jump-controller)** - Jump to related controller methods in Laravel projects.
21. **[laravel-goto-components](https://marketplace.visualstudio.com/items?itemName=naoray.laravel-goto-components)** - Quickly navigate to Laravel components.
22. **[Bracket Pair Colorization Toggler](https://marketplace.visualstudio.com/items?itemName=dzhavat.bracket-pair-toggler)** - Toggle bracket pair colorization.
23. **[SCSS Formatter](https://marketplace.visualstudio.com/items?itemName=sibiraj-s.vscode-scss-formatter)** - Automatically formats SCSS files.
24. **[Live Sass Compiler](https://marketplace.visualstudio.com/items?itemName=glenn2223.live-sass)** - Live Sass compiler for real-time styling.
25. **[Image Preview](https://marketplace.visualstudio.com/items?itemName=kisstkondoros.vscode-gutter-preview)** - Preview images directly in VS Code.
26. **[Markdown All in One](https://marketplace.visualstudio.com/items?itemName=davidanson.vscode-markdownlint)** - Enhances Markdown editing experience.
27. **[Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)** - Provides autocompletion for file paths.
28. **[Trailing Spaces](https://marketplace.visualstudio.com/items?itemName=shardulm94.trailing-spaces)** - Highlights trailing spaces to remove them easily.
29. **[Background](https://marketplace.visualstudio.com/items?itemName=shalldie.background)** - Allows setting custom background images.

---

### Conclusion

These settings and extensions enhance my productivity, helping me code faster and more efficiently. Feel free to clone or fork this repository and adapt it to your own preferences.

Happy coding! 👨‍💻👩‍💻

This `README.md` provides a detailed explanation of your settings and extensions for easy reference and sharing.
