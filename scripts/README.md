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

