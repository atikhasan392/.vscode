#!/bin/bash

# =============================================================================
# VS Code Extension Installer
# =============================================================================
# Run this script to install all required VS Code extensions at once.
# Usage: bash install-extensions.sh
# =============================================================================


# -----------------------------------------------------------------------------
# Workbench — Theme & Icons
# -----------------------------------------------------------------------------
code --install-extension monokai.theme-monokai-pro-vscode      # Monokai Pro
code --install-extension pkief.material-icon-theme             # Material Icon Theme
code --install-extension katsute.code-background               # Background


# -----------------------------------------------------------------------------
# Editor Utilities
# -----------------------------------------------------------------------------
code --install-extension vincaslt.highlight-matching-tag       # Highlight Matching Tag
code --install-extension naumovs.color-highlight               # Color Highlight
code --install-extension formulahendry.auto-close-tag          # Auto Close Tag
code --install-extension formulahendry.auto-rename-tag         # Auto Rename Tag
code --install-extension aaron-bond.better-comments            # Better Comments
code --install-extension bracketpaircolordlw.bracket-pair-color-dlw # Bracket Pair Color DLW
code --install-extension shardulm94.trailing-spaces            # Trailing Spaces
code --install-extension christian-kohler.path-intellisense    # Path Intellisense
code --install-extension simonsiefke.svg-preview               # SVG Preview
code --install-extension esbenp.prettier-vscode                # Prettier — Code Formatter


# -----------------------------------------------------------------------------
# HTML & CSS
# -----------------------------------------------------------------------------
code --install-extension anteprimorac.html-end-tag-labels      # HTML End Tag Labels
code --install-extension solnurkarim.html-to-css-autocompletion # HTML to CSS Autocompletion
code --install-extension zignd.html-css-class-completion       # IntelliSense for CSS Class Names in HTML
code --install-extension joy-yu.css-snippets                   # CSS Snippets


# -----------------------------------------------------------------------------
# Tailwind CSS
# -----------------------------------------------------------------------------
code --install-extension bradlc.vscode-tailwindcss             # Tailwind CSS IntelliSense


# -----------------------------------------------------------------------------
# JavaScript & Node.js
# -----------------------------------------------------------------------------
code --install-extension dbaeumer.vscode-eslint                # ESLint
code --install-extension christian-kohler.npm-intellisense     # npm Intellisense
code --install-extension omouta.terminal-npm-intellisense      # Terminal NPM IntelliSense
code --install-extension oven.bun-vscode                       # Bun for Visual Studio Code


# -----------------------------------------------------------------------------
# PHP
# -----------------------------------------------------------------------------
code --install-extension xdebug.php-debug                      # PHP Debug
code --install-extension devsense.composer-php-vscode          # Composer
code --install-extension muath-ye.composer-intelephense        # Composer Intelephense


# -----------------------------------------------------------------------------
# Laravel
# -----------------------------------------------------------------------------
code --install-extension laravel.vscode-laravel                # Laravel (official)
code --install-extension onecentlin.laravel-blade              # Laravel Blade Snippets
code --install-extension onecentlin.laravel5-snippets          # Laravel Snippets
code --install-extension austenc.laravel-blade-spacer          # Laravel Blade Spacer
code --install-extension absszero.vscode-laravel-goto          # Laravel Goto
code --install-extension naoray.laravel-goto-components        # Laravel Goto Components
code --install-extension codingyu.laravel-goto-view            # Laravel Goto View
code --install-extension mohamedbenhida.laravel-intellisense   # Laravel IntelliSense
code --install-extension amiralizadeh9480.laravel-extra-intellisense # Laravel Extra IntelliSense


# -----------------------------------------------------------------------------
# Livewire
# -----------------------------------------------------------------------------
code --install-extension cierra.livewire-vscode                # Livewire Language Support
code --install-extension ganyicz.livewire-sfc-support          # Livewire SFC / Volt Support
code --install-extension lennardv.livewire-goto-updated        # Livewire Goto


# -----------------------------------------------------------------------------
# Filament
# -----------------------------------------------------------------------------
code --install-extension juniorpeixoto.vscode-filamentphp-helpers # Filament PHP Helpers


# -----------------------------------------------------------------------------
# Alpine.js
# -----------------------------------------------------------------------------
code --install-extension pcbowers.alpine-intellisense          # Alpine.js IntelliSense
code --install-extension adrianwilczynski.alpine-js-intellisense # Alpine.js IntelliSense (alternative)


# -----------------------------------------------------------------------------
# Astro
# -----------------------------------------------------------------------------
code --install-extension astro-build.astro-vscode              # Astro


# -----------------------------------------------------------------------------
# Environment & Configuration
# -----------------------------------------------------------------------------
code --install-extension mikestead.dotenv                      # DotENV
code --install-extension davidanson.vscode-markdownlint        # Markdownlint


# -----------------------------------------------------------------------------
# Remote Development
# -----------------------------------------------------------------------------
code --install-extension ms-vscode-remote.remote-wsl           # WSL


# -----------------------------------------------------------------------------
# Development Server
# -----------------------------------------------------------------------------
code --install-extension ritwickdey.LiveServer                 # Live Server


# -----------------------------------------------------------------------------
# AI Assistants
# -----------------------------------------------------------------------------
code --install-extension openai.chatgpt                        # Codex — OpenAI Coding Agent
code --install-extension google.gemini-cli-vscode-ide-companion # Gemini CLI Companion


# =============================================================================
# Installation complete.
# =============================================================================
