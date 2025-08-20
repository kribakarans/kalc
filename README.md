# C Calculator Project

A modular calculator written in C, structured into multiple files to demonstrate
**project navigation with ctags & cscope** in Vim/VS Code.

## 📂 Project Structure

```
kalc/
├── include/
│   ├── calculator.h
│   ├── operations.h
│   └── utils.h
├── src/
│   ├── calculator.c
│   ├── main.c
│   ├── operations.c
│   └── utils.c
├── scripts/
│   ├── build.sh
│   ├── clean.sh
│   ├── run.sh
│   ├── gen_tags.sh
│   └── explore.sh
├── Makefile
└── README.md
```

## ⚙️ Build & Run

```bash
make        # build
./kalc.out  # run calculator
make clean  # clean build
```

or via scripts:

```bash
./scripts/build.sh
./scripts/run.sh
```

---

## Explore symbols with Vim (ctags + cscope)

1. Generate tags:

   ```bash
   ./scripts/gen_tags.sh
   ```

2. Explore code:

   ```bash
   ./scripts/explore.sh
   ```

   - `Ctrl-]` → jump to definition (via ctags)
   - `Ctrl-t` → jump back
   - `:cs find c add` → find all callers of `add`
   - `:cs find t Division` → find string `Division by zero`
   - `:cs find i utils.h` → find includes of `utils.h`

   - `<F12>` jump to definition
   - `\cs` find symbol
   - `\cc` find callers

## Explore symbols with VS Code

   - `Ctrl+Shift+B` → Build
   - `F5` → Debug
   - `F12` → Go to definition
   - `Shift+F12` → References

---

## 🎥 Record & Replay Demo with Asciinema

You can **record a terminal walkthrough** of this project navigation:

### 1. Install asciinema

```bash
sudo apt install asciinema     # Debian/Ubuntu
# or
sudo dnf install asciinema     # Fedora
```

### 2. Record a session

```bash
asciinema rec demo.cast
```

Inside the recording, run:

```bash
./scripts/gen_tags.sh
vim -t run_calculator
```

Explore with:
- `Ctrl-]` on `add` → jump into `operations.c`
- `:cs find c add` → find callers
- `Ctrl-]` on `operation_func` → jump into typedef
- `:cs find t Division` → locate error string
- `:cs find i utils.h` → locate includes

Exit Vim with `:qa`, then press **Ctrl-D** to stop recording.

### 3. Replay the session

```bash
asciinema play demo.cast
```

### 4. (Optional) Upload and share

```bash
asciinema upload demo.cast
```

You’ll get a shareable link, e.g.:

```
https://asciinema.org/a/XXXXX
```

Add this link to your documentation to share the demo with others.

Example:

https://asciinema.org/a/W7HpaTHZooqU6f7sP4MwclN42

---

## ✅ Learning Goals

- Practice navigating a **Complex C project**.
- Learn **ctags** & **cscope** usage in Vim and VS Code.
- Record and share sessions with **asciinema**.

---

Happy hacking!
