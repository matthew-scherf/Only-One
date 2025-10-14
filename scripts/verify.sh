#!/usr/bin/env bash
# Script: verify.sh
# Purpose: One-command verification of the Advaita Vedanta formalization
# Usage: ./scripts/verify.sh

set -euo pipefail

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Configuration
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LOG_FILE="$REPO_ROOT/verification/build_log_$(date +%Y-%m-%d_%H-%M-%S).txt"

echo "═══════════════════════════════════════════════════════════"
echo "  Advaita Vedanta Formalization - Verification Script"
echo "═══════════════════════════════════════════════════════════"
echo ""

# Check if Isabelle is installed
if ! command -v isabelle &> /dev/null; then
    echo -e "${RED}❌ Isabelle not found in PATH${NC}"
    echo ""
    echo "Please install Isabelle 2025:"
    echo "  https://isabelle.in.tum.de/"
    echo ""
    echo "Or add Isabelle to your PATH:"
    echo "  export PATH=\"/path/to/Isabelle2025/bin:\$PATH\""
    exit 1
fi

# Check Isabelle version
ISABELLE_VERSION=$(isabelle version 2>&1 | head -n 1)
echo "✓ Found Isabelle: $ISABELLE_VERSION"
echo ""

# Check we're in the right directory
if [ ! -f "$REPO_ROOT/ROOT" ]; then
    echo -e "${RED}❌ Not in repository root (ROOT file not found)${NC}"
    echo "Please run from repository root: ./scripts/verify.sh"
    exit 1
fi

if [ ! -f "$REPO_ROOT/theory/Advaita_Vedanta.thy" ]; then
    echo -e "${RED}❌ Theory file not found${NC}"
    echo "Expected: $REPO_ROOT/theory/Advaita_Vedanta.thy"
    exit 1
fi

echo "✓ Repository structure verified"
echo ""

# Run verification
echo "Starting verification..."
echo "This will take 30-60 seconds..."
echo ""
echo "Log file: $LOG_FILE"
echo ""

cd "$REPO_ROOT"

# Run isabelle build and capture output
if isabelle build -d . -v Advaita 2>&1 | tee "$LOG_FILE"; then
    echo ""
    echo "═══════════════════════════════════════════════════════════"
    echo -e "${GREEN}✅ VERIFICATION SUCCESSFUL${NC}"
    echo "═══════════════════════════════════════════════════════════"
    echo ""
    echo "All theorems verified:"
    echo "  • Tat Tvam Asi Ultimate          ✓"
    echo "  • Complete Non-Duality           ✓"
    echo "  • You Are Only Reality           ✓"
    echo "  • You Were Never Born            ✓"
    echo "  • You Will Never Die             ✓"
    echo "  • You Never Change               ✓"
    echo "  • Causation Denial               ✓"
    echo "  • Space-Time Unreality           ✓"
    echo "  • And 20+ more theorems...       ✓"
    echo ""
    echo "Build log saved to:"
    echo "  $LOG_FILE"
    echo ""
    echo "═══════════════════════════════════════════════════════════"
    echo "  तत् त्वम् असि  (Tat Tvam Asi)"
    echo "  That Thou Art - Machine Verified"
    echo "═══════════════════════════════════════════════════════════"
    exit 0
else
    echo ""
    echo "═══════════════════════════════════════════════════════════"
    echo -e "${RED}❌ VERIFICATION FAILED${NC}"
    echo "═══════════════════════════════════════════════════════════"
    echo ""
    echo "Something went wrong. Check the log file:"
    echo "  $LOG_FILE"
    echo ""
    echo "Common issues:"
    echo "  • Wrong Isabelle version (need 2025)"
    echo "  • Theory file was modified"
    echo "  • Missing dependencies"
    echo ""
    echo "Try:"
    echo "  1. Check Isabelle version: isabelle version"
    echo "  2. Re-clone repository: git clone [url]"
    echo "  3. Open an issue on GitHub with the log file"
    exit 1
fi