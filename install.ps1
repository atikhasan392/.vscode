<#
.SYNOPSIS
    Professional VS Code Extension Installer (PowerShell Edition)
.DESCRIPTION
    This script cleanly installs a list of VS Code extensions.
    It neatly displays SUCCESS in green or FAILED in red, and
    continues the process even if a specific extension fails.
#>

$ErrorActionPreference = "Continue"

# Extension and category data
$extensionData = @"
# ==============================================================================
# Workbench - Theme & Icons
# ==============================================================================
monokai.theme-monokai-pro-vscode             # Monokai Pro
pkief.material-icon-theme                    # Material Icon Theme
katsute.code-background                      # Background

# ==============================================================================
# Editor Utilities
# ==============================================================================
vincaslt.highlight-matching-tag              # Highlight Matching Tag
naumovs.color-highlight                      # Color Highlight
formulahendry.auto-close-tag                 # Auto Close Tag
formulahendry.auto-rename-tag                # Auto Rename Tag
aaron-bond.better-comments                   # Better Comments
bracketpaircolordlw.bracket-pair-color-dlw   # Bracket Pair Color DLW
shardulm94.trailing-spaces                   # Trailing Spaces
christian-kohler.path-intellisense           # Path Intellisense
simonsiefke.svg-preview                      # SVG Preview
esbenp.prettier-vscode                       # Prettier — Code Formatter
redhat.vscode-yaml                           # YAML
ms-vscode.notepadplusplus-keybindings        # Notepad++ keymap
editorconfig.editorconfig                    # EditorConfig
dotjoshjohnson.xml                           # XML Tools
ritwickdey.LiveServer                        # Live Server

# ==============================================================================
# Version Control CI/CD
# ==============================================================================
gitlab.gitlab-workflow                       # GitLab

# ==============================================================================
# HTML & CSS
# ==============================================================================
anteprimorac.html-end-tag-labels             # HTML End Tag Labels
solnurkarim.html-to-css-autocompletion       # HTML to CSS Autocompletion
zignd.html-css-class-completion              # IntelliSense for CSS Class Names in HTML
joy-yu.css-snippets                          # CSS Snippets

# ==============================================================================
# Tailwind CSS
# ==============================================================================
bradlc.vscode-tailwindcss                    # Tailwind CSS IntelliSense

# ==============================================================================
# JavaScript & Node.js
# ==============================================================================
dbaeumer.vscode-eslint                       # ESLint
christian-kohler.npm-intellisense            # npm Intellisense
omouta.terminal-npm-intellisense             # Terminal NPM IntelliSense
oven.bun-vscode                              # Bun for Visual Studio Code

# ==============================================================================
# PHP
# ==============================================================================
xdebug.php-debug                             # PHP Debug
bmewburn.vscode-intelephense-client          # PHP Intelephense
devsense.composer-php-vscode                 # Composer
muath-ye.composer-intelephense               # Composer Intelephense
devsense.phptools-vscode                     # PHP
devsense.intelli-php-vscode                  # IntelliPHP - AI Suggestions for PHP
rifi2k.format-html-in-php                    # Format HTML in PHP
mehedidracula.php-namespace-resolver         # PHP Namespace Resolver
neilbrayfield.php-docblocker                 # PHP DocBlocker

# ==============================================================================
# Laravel
# ==============================================================================
laravel.vscode-laravel                       # Laravel (official)
onecentlin.laravel-blade                     # Laravel Blade Snippets
onecentlin.laravel5-snippets                 # Laravel Snippets
austenc.laravel-blade-spacer                 # Laravel Blade Spacer
absszero.vscode-laravel-goto                 # Laravel Goto
naoray.laravel-goto-components               # Laravel Goto Components
codingyu.laravel-goto-view                   # Laravel Goto View
mohamedbenhida.laravel-intellisense          # Laravel IntelliSense
amiralizadeh9480.laravel-extra-intellisense  # Laravel Extra IntelliSense
shufo.vscode-blade-formatter                 # Laravel Blade formatter

# ==============================================================================
# Livewire
# ==============================================================================
cierra.livewire-vscode                       # Livewire Language Support
ganyicz.livewire-sfc-support                 # Livewire SFC / Volt Support
lennardv.livewire-goto-updated               # Livewire Goto

# ==============================================================================
# Filament
# ==============================================================================
juniorpeixoto.vscode-filamentphp-helpers     # Filament PHP Helpers
alperenersoy.filament-snippets               # Filament Snippets

# ==============================================================================
# Alpine.js
# ==============================================================================
pcbowers.alpine-intellisense                 # Alpine.js IntelliSense
adrianwilczynski.alpine-js-intellisense      # Alpine.js IntelliSense (alternative)

# ==============================================================================
# Astro
# ==============================================================================
astro-build.astro-vscode                     # Astro

# ==============================================================================
# Database
# ==============================================================================
jakebathman.mysql-syntax                     # MySQL Syntax
redis.redis-for-vscode                       # Redis for VS Code

# ==============================================================================
# Environment & Configuration
# ==============================================================================
mikestead.dotenv                             # DotENV
davidanson.vscode-markdownlint               # Markdownlint

# ==============================================================================
# Remote Development
# ==============================================================================
ms-vscode-remote.remote-wsl                  # WSL

# ==============================================================================
# AI Assistants
# ==============================================================================
ollama.ollama                                # Ollama
openai.chatgpt                               # Codex - OpenAI's coding agent
google.google-antigravity                    # Google Antigravity
"@

Clear-Host
Write-Host "==============================================================================" -ForegroundColor Cyan
Write-Host " VS Code Extension Installer" -ForegroundColor Green -NoNewline
Write-Host " (PowerShell Edition)" -ForegroundColor White
Write-Host "==============================================================================" -ForegroundColor Cyan
Write-Host "Starting installation process...`n" -ForegroundColor Yellow

# Check if VS Code is in the system PATH
try {
    $null = Get-Command code -ErrorAction Stop
} catch {
    Write-Host "[ERROR] VS Code ('code' command) is not found in your system PATH." -ForegroundColor Red
    Write-Host "Please ensure VS Code is installed and added to PATH, then restart PowerShell." -ForegroundColor Red
    exit
}

$lines = $extensionData -split "`n"
$total = 0
$success = 0
$failed = 0

foreach ($line in $lines) {
    $line = $line.Trim()

    # Skip empty lines and dividers
    if ([string]::IsNullOrWhiteSpace($line) -or $line -match "^# ===+") {
        continue
    }

    # Print category header
    if ($line.StartsWith("#")) {
        $catName = $line.Substring(1).Trim()
        Write-Host "`n> $catName" -ForegroundColor Cyan
        continue
    }

    # Extract extension ID and name
    if ($line -match "^([^\s#]+)(?:\s+#\s*(.+))?$") {
        $extId = $matches[1].Trim()
        $extName = if ($matches[2]) { $matches[2].Trim() } else { $extId }
    } else {
        continue
    }

    $total++

    # Maintain output alignment for better UI
    $padding = 45 - $extName.Length
    if ($padding -lt 2) { $padding = 2 }

    Write-Host "  Installing: " -NoNewline
    Write-Host $extName -ForegroundColor White -NoNewline
    Write-Host (" " * $padding) -NoNewline
    Write-Host "..." -ForegroundColor DarkGray -NoNewline

    try {
        # Run installation process in the background
        $output = code --install-extension $extId --force 2>&1

        if ($LASTEXITCODE -eq 0) {
            Write-Host " [ SUCCESS ]" -ForegroundColor Green
            $success++
        } else {
            Write-Host " [ FAILED ]" -ForegroundColor Red
            $failed++
        }
    } catch {
        Write-Host " [ FAILED ]" -ForegroundColor Red
        $failed++
    }
}

Write-Host "`n==============================================================================" -ForegroundColor Cyan
Write-Host " Installation Complete!" -ForegroundColor Green
Write-Host " Total Attempted : $total" -ForegroundColor White
Write-Host " Successful      : $success" -ForegroundColor Green
if ($failed -gt 0) {
    Write-Host " Failed          : $failed" -ForegroundColor Red
} else {
    Write-Host " Failed          : 0" -ForegroundColor Gray
}
Write-Host "==============================================================================" -ForegroundColor Cyan
