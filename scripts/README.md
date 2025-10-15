# Scripts

Automation scripts for building, verifying, and maintaining the project.

## Available Scripts

### `verify.sh`

One-command verification of the entire formalization.

**Usage:**
```bash
./scripts/verify.sh
```

**What it does:**
- Checks Isabelle is installed
- Runs `isabelle build -d . -v Advaita`
- Reports success/failure
- Logs output with timestamp

**Requirements:**
- Isabelle 2025 in PATH
- Run from repository root

---

### `build_docs.sh`

Builds all PDF documentation from LaTeX sources.

**Usage:**
```bash
./scripts/build_docs.sh
```

**What it does:**
- Compiles all `.tex` files in `docs/`
- Runs LaTeX multiple times (for references)
- Runs BibTeX for bibliography
- Cleans up auxiliary files
- Reports any errors

**Requirements:**
- LaTeX distribution (TeX Live or MiKTeX)
- BibTeX
- Run from repository root

---

### `check_dependencies.sh`

Verifies all required tools are installed and accessible.

**Usage:**
```bash
./scripts/check_dependencies.sh
```

**What it checks:**
- Isabelle installation and version
- LaTeX installation
- Git configuration
- File permissions
- Directory structure

**Output:**
-  Tick for each found dependency
-  Cross for missing dependencies with installation instructions

---

## Script Development

### Creating New Scripts

Follow these conventions:

1. **Shebang:** `#!/usr/bin/env bash`
2. **Error handling:** Use `set -euo pipefail`
3. **Documentation:** Comment what the script does
4. **Execution:** Make executable with `chmod +x`
5. **Location:** Must run from repository root

### Example Template

```bash
#!/usr/bin/env bash
# Script: example.sh
# Purpose: Does something useful
# Usage: ./scripts/example.sh

set -euo pipefail

# Configuration
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Main logic
cd "$REPO_ROOT"
echo "Doing something..."

# Error checking
if [ $? -eq 0 ]; then
    echo "✅ Success"
else
    echo "❌ Failed"
    exit 1
fi
```

---

## Planned Scripts (Future)

**`test_modifications.sh`**
- Test what happens when axioms are removed
- Verify modular structure
- Report which theorems break

**`generate_diagrams.sh`**
- Auto-generate dependency graphs
- Create visual theorem hierarchy
- Export as SVG/PNG

**`benchmark.sh`**
- Time verification on different systems
- Compare performance across Isabelle versions
- Generate performance reports

**`check_completeness.sh`**
- Verify all theorems in paper match `.thy` file
- Check all citations are valid
- Ensure documentation is up-to-date

**`prepare_release.sh`**
- Run all checks
- Build all documentation
- Create release archive
- Generate checksums

---

## Contributing Scripts

If you create useful automation:

1. Follow the conventions above
2. Test thoroughly
3. Document what it does
4. Submit via pull request

Especially useful:
- Cross-platform compatibility improvements
- Better error messages
- Progress indicators
- Automated testing

---

## Troubleshooting

**"Permission denied"**
```bash
chmod +x scripts/*.sh
```

**"Isabelle not found"**
- Ensure Isabelle is in your PATH
- Or edit scripts to use absolute path to Isabelle

**"LaTeX not found"**
- Install TeX Live (Linux/Mac) or MiKTeX (Windows)
- Ensure `pdflatex` and `bibtex` are in PATH

**Scripts fail on Windows**
- Use Git Bash or WSL
- Or port scripts to PowerShell (contributions welcome!)

---

*Automation reduces errors and saves time.*

*But understanding what's being automated is more important.*