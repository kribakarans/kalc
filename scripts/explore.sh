#!/usr/bin/env bash
set -e
cd ..
if [[ ! -f cscope.out ]]; then
    echo "[Explore] No cscope database. Run ./scripts/gen_tags.sh first."
    exit 1
fi

echo "[Explore] Opening Vim with cscope..."
vim -t run_calculator

# When you run:
#
# vim -t run_calculator
#
# you are telling Vim to jump directly to the tag run_calculator (using the -t option).
#
# What happens step by step:
#---------------------------
#
# ctags -R . generates a tags file in your project.
#
# That file records where every function, variable, macro, struct, etc. is defined.
#
# For example, it will have an entry like:
#
# run_calculator    src/calculator.c    /^void run_calculator(void) {/
#
#
# When you launch Vim with -t run_calculator, Vim:
#
# Loads the tags file.
#
# Searches for the tag named run_calculator.
#
# Opens the file (src/calculator.c) at the exact line where that function is defined.
#
# You land immediately inside the function — no need to :tag run_calculator manually.
#
# Equivalent inside Vim:
#----------------------
#
# If you were already inside Vim, you could type:
#
# :tag run_calculator
#
#
# or, if your cursor is on the word:
#
# Ctrl-]      " jump to definition
# Ctrl-t      " jump back

