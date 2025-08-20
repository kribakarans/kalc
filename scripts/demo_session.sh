#!/usr/bin/env bash
# Demo script: explore calculator project with ctags + cscope in Vim

# 1. Ensure tags + cscope DB exist
echo "[*] Generating tags and cscope DB..."
ctags -R .
cscope -Rbq

# 2. Create a Vim session file with demo commands
cat > demo.vim <<'EOF'
" Load cscope DB
cs add cscope.out

" Step 1: Jump to run_calculator
tselect run_calculator

" Pause to show code
normal zz
echo "== Now inside run_calculator() =="

" Step 2: Jump to add() using Ctrl-]
tag add
normal zz
echo "== Jumped to add() =="

" Step 3: Use cscope to find callers of add
cs find c add
copen
echo "== Cscope: callers of add =="

" Step 4: Jump to typedef operation_func
tag operation_func
normal zz
echo "== Jumped to typedef operation_func =="

" Step 5: Find string 'Division by zero'
cs find t Division
copen
echo "== Cscope: found 'Division by zero' =="

" Step 6: Find includes of utils.h
cs find i utils.h
copen
echo "== Cscope: files including utils.h =="

" Quit after demo
qa
EOF

# 3. Run Vim in headless mode to simulate replay
echo "[*] Running demo in Vim..."
vim -u NONE -S demo.vim

echo "[*] Demo complete. You just replayed the navigation!"

